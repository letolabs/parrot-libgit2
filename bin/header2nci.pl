#!/usr/bin/perl

use strict;
use warnings;

use File::Slurp;
use List::MoreUtils qw(any);
use YAML qw(LoadFile);

# Description: reads a local gmp.h and outputs an NCI definition file

if (scalar @ARGV != 1 || ! -e $ARGV[0]) {
  die "Usage: perl gmph2ncidef.pl /path/to/gmp.h\n";
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

  open my $gmp_header, '<', $filename;

  while(<$gmp_header>) {
    chomp;
    next if $_ !~ m/^#/;
    # note: in the future, we will look for more functions
    # and not just mpz types
    my $prefix = '(?:_?mpz|gmp_u?rand)';
    # does the line match a C-style declare?
    if ($_ =~ m/#define ($prefix\S+) (__\S+)/) {
      # $1 is the convenient name used everywhere else
      my $convenient_name = $1;
      # $2 is the name we must use in the NCI def
      my $internal_name = $2;
      # skip if it's on our blacklist
      next if any { $convenient_name eq $_ } @blacklist;
      $functions{$convenient_name}{'internal_name'} = $internal_name;
      # read until the next blank line into a definition
      my $definition;
      while ((my $following_line = <$gmp_header>) !~ m/^$/) {
        chomp $following_line;
        # some functions have complex conditions to check if
        # __GMP_DECLSPEC should be called ...
        # let's get these functions signatures regardless of those conditions
        next if $following_line =~ m/^(#if|#endif)/;

        # remove inline comments from the definition
        $following_line =~ s!/\*.*\*/!!;
        $definition .= $following_line;
      }
      # process the definition into a return type and a method signature
      if ($definition =~ m/__GMP_DECLSPEC\s+(.+)$convenient_name __GMP_PROTO \(\((.+)\)\)/) {
        my $return_type      = $1;
        my $method_signature = $2;

        # process return_type and method_signature - we need to convert
        # it from a valid C type to an NCI def - ie. void -> v
        my $converted_return_type = process_types($return_type);
        $functions{$convenient_name}{'return_type'}      = $converted_return_type;
        my $converted_method_signature = join '', map { process_types($_) } split /,/, $method_signature;
        $functions{$convenient_name}{'method_signature'} = $converted_method_signature;
      } else {
        warn "Line does not match function definition: $definition";
      }
    }
  }

  close $gmp_header;

  return \%functions;
}

sub process_types {
  my $type = shift;
  # GMP uses the __gmp_const macro as a placeholder to handle compilers that
  # don't support const - we'll ignore this macro as the burden is on the
  # developer (not the bindings) to ensure no const data structures get
  # modified
  $type =~ s/__gmp_const//g;
  # trim any extra space
  $type =~ s/^\s+//g;
  $type =~ s/\s+$//g;
  return $mappings{$type} if exists $mappings{$type};
  warn "No extant mapping for $type; setting as void";
  return 'v';
}

sub print_ncidef {
  my $functions = shift;

  while(my ($function_name, $details) = each(%{$functions})) {
    print $details->{'return_type'} . " " . $details->{'internal_name'} . " " . $details->{'method_signature'} . " # " . $function_name . "\n";
  }
}
