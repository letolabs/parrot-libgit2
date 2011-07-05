#!/usr/bin/perl

use strict;
use warnings;

use File::Slurp;
use List::MoreUtils qw(any);
use YAML qw(LoadFile);

# Description: reads a C header file and outputs an NCI definition file

if (scalar @ARGV != 1 || ! -e $ARGV[0]) {
  die "Usage: perl $0 /path/to/header.h\n";
}

my $filename = $ARGV[0];

my %mappings = %{LoadFile('conf/c_to_nci_mappings.yml')};

# blacklist is an array of function names to not bother with
my @blacklist = @{LoadFile('conf/blacklist.yml')};

my $functions = process_gmph($filename);
print_ncidef($functions);

sub process_gmph {
  my $filename = shift;
  my %functions;

  open my $header, '<', $filename;

  while(<$header>) {
    chomp;
    next unless m/^GIT_EXTERN/;
    # note: in the future, we will look for more functions
    # and not just mpz types
    my $prefix = '(?:_?GIT)';
    # does the line match a C-style declare?
    if ($_ =~ m/^($prefix\S+\((.*?)\))\s+(\S+)\((\S+)(\);;?)?/) {
      # $1 is the convenient name used everywhere else
      my $convenient_name  = $3;
      my $internal_name    = $3;
      my $return_type      = $2;

      my $definition = '';
      while ((my $following_line = <$header>) !~ m/^$/) {
        chomp $following_line;

        next if $following_line =~ m/^(#if|#endif)/;

        # remove inline comments from the definition
        $following_line =~ s!/\*.*\*/!!;
        $definition .= $following_line;
      }
      my $method_signature = $definition;
      $method_signature =~ s/\);;?$//;


      # skip if it's on our blacklist
      next if any { $convenient_name eq $_ } @blacklist;
      $functions{$convenient_name}{'internal_name'} = $internal_name;

      # process return_type and method_signature - we need to convert
      # it from a valid C type to an NCI def - ie. void -> v
      my $converted_return_type = process_types($return_type);
      $functions{$convenient_name}{'return_type'}      = $converted_return_type;
      my $converted_method_signature = join '', map { process_types($_) } split /,/, $method_signature;
      $functions{$convenient_name}{'method_signature'} = $converted_method_signature;
    } else {
        warn "Line does not match function definition: $_";
    }
  }

  close $header;

  return \%functions;
}

sub process_types {
  my $type = shift;
  # trim any extra space
  $type =~ s/^\s+//g;
  $type =~ s/\s+$//g;
  warn "looking up $type" if $ENV{DEBUG};
  return $mappings{$type} if exists $mappings{$type};
  warn "No extant mapping for '$type'; setting as void";
  return 'v';
}

sub print_ncidef {
  my $functions = shift;

  while(my ($function_name, $details) = each(%{$functions})) {
    print $details->{'return_type'} . " " . $details->{'internal_name'} . " " . $details->{'method_signature'} . " # " . $function_name . "\n";
  }
}
