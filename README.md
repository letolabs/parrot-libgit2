# Parrot Virtual Machine bindings to libgit2

This is library for Parrot Virtual Machine to provide libgit2 bindings to all
languages running on Parrot Virtual Machine.

## Theory

We read in libgit2 header files and generate bindings from that, so that it is
trivial to release a new version of parrot-libgit2 when the libgit2 API changes,
which it will for the forseable future.

Here be dragons.

## Generating NCI definitions

There is a script called *header2nci.pl* in bin/ that generates the NCI
definition file from a libgit2 header file. Example:

    perl ./bin/header2nci.pl /usr/local/include/git2/repository.h

## Contributing

Beer, pull requests and patches welcome! Fork and be merry.
