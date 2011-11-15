# Parrot Virtual Machine bindings to libgit2

This is library for Parrot Virtual Machine to provide libgit2 bindings to all
languages running on Parrot Virtual Machine.

## Compiling

You need [Parrot VM](http://parrot.org) 3.5.0 or higher to compile parrot-libgit2 . 3.6.0
or higher is recommended.

The language [Winxed](http://winxed.org) is included in Parrot >= 3.5.0, and the build system of parrot-libgit2
uses it. To build parrot-libgit2:

    winxed setup.winxed build

## Running Tests

    winxed setup.winxed test

## Installing

    winxed setup.winxed install

If you installed Parrot into a system-wide directory that only root can write to, you
will need sudo:

    sudo winxed setup.winxed install

## Cleaning up

    winxed setup.winxed clean

## Theory

We read in libgit2 header files and generate an NCI binding file. This file is read
in by $PARROT/tools/dev/ncidef2pir.pl and a PIR file is generated which allows Parrot
to call libgit2 C functions from PIR.

This only understands function signature API changes, not datastructure API changes.
Those are still manually decribed to the StructView PMC in src/Git2/Common.winxed .

This makes it trivial to release a new version of parrot-libgit2 when the
libgit2 API changes, which it will for the forseable future. Currently, the
0.15.0 release of libgit2 is supported.

## Generating NCI definitions

There is a script called *header2nci.pl* in bin/ that generates the NCI
definition file from a libgit2 header file. Example:

    perl ./bin/header2nci.pl /usr/local/include/git2/repository.h

This script has some bugs and does not parse all of libgit2 correctly yet.
TODO: Make header2nci.pl able to parse all libgit2 headers.

There is a Makefile target to generate our NCI definitions from libgit2

    make nci

TODO: add this as a custom step to setup.winxed

## Contributing

Beer, pull requests and patches welcome! Fork and be merry.
