# Parrot Virtual Machine bindings to libgit2

This is library for Parrot Virtual Machine to provide libgit2 bindings to all
languages running on Parrot Virtual Machine.

[![Build Status](https://secure.travis-ci.org/letolabs/parrot-libgit2.png)](http://travis-ci.org/letolabs/parrot-libgit2)

## Compiling

You need [Parrot VM](http://parrot.org) 3.5.0 or higher configured with libffi
to compile parrot-libgit2 . 5.3.0 or higher is recommended.

To see if your Parrot has [libffi](http://sourceware.org/libffi/)

    parrot_config HAS_LIBFFI

You should see a true value. If you see a 0 or empty string, your Parrot is not
configured with libffi.

The language [Winxed](http://winxed.net) is included in Parrot >= 3.5.0, and
the build system of parrot-libgit2 uses it. To build parrot-libgit2:

    winxed setup.winxed build

## Installation

    sudo winxed setup.winxed install

For now, also copy libparrotgit.so to your lib folder manually.

## Running Tests

parrot-libgit2 uses [Rosella](http://whiteknight.github.com/Rosella/) to run
and implement a test suite.

To run the parrot-libgit2 test suite:

    winxed setup.winxed test

## Cleaning up

    winxed setup.winxed clean

## Theory

We read in libgit2 header files and generate an NCI binding file. This file is read
in by $PARROT/tools/dev/ncidef2pir.pl and a PIR file is generated which allows Parrot
to call libgit2 C functions from PIR.

This only understands function signature API changes, not datastructure API changes.
Those are still manually decribed by the StructView PMC in 
[src/Git2/Common.winxed](https://github.com/letolabs/parrot-libgit2/blob/master/src/Git2/Common.winxed) .

This makes it trivial to release a new version of parrot-libgit2 when the
libgit2 API changes, which it will for the forseable future. Currently, the
0.19.0 release of libgit2 is supported.

By default, a low-level PIR binding is created for every libgit2 API function, so every release
of parrot-libgit2 *supports all of libgit2*. In addition to this, a few stubborn humans
are implementing a higher-level and object-oriented interface in the [Winxed](http://winxed.net)
programming language (which comes bundled with Parrot since 3.5.0).

A simplistic C wrapper exists for some functions that cannot be called directly from winxed.
These functions are present in [src/parrotgit.c](https://github.com/letolabs/parrot-libgit2/blob/master/src/parrotgit.c).
These are compiled to a shared library called libparrotgit.so.

## Generating NCI definitions

There is a script called *header2nci.pl* in bin/ that generates the NCI
definition file from a libgit2 header file. Example:

    perl ./bin/header2nci.pl /usr/local/include/git2/repository.h
    

This script has some bugs and does not parse all of libgit2 correctly yet.
TODO: Make header2nci.pl able to parse all libgit2 headers.

NCI defs are automatically generated during setup.

## How to use the high-level Winxed bindings:

Opening a repository:

    using Git2.Repository;
    var repo = new Git2.Repository();
    repo.init_repo("/path/to/repository");

    repo.free();

Using the index:

    using Git2.Repository;
    using Git2.Index;

    var repo = new Git2.Repository();
    var git_index = new Git2.Index();
    repo.init("/path/to/repository");

    git_index.set_index(repo.ptr);
    int ecount = git_index.get_entrycount();
    print("Index entry count" + ecount + "\n");

    git_index.free();
    repo.free();


Getting config variables:

    using Git2.Config;
    var config = new Git2.Config;
    config.get_config("path/to/repo/config");

    int cfg_val = config.get_int32("help.autocorrect");
    print(cfg_val);

Getting an object from SHA1 hash:

    using Git2.Oid;

    var git_oid = new Git2.Oid();
    var hex = "599955586da1c3ad514f3e65f1081d2012ec862d";

    git_oid.oid_from_str(hex);

Getting Commit Data:

    using Git2.Commit
    using Git2.Repository;
    using Git2.Oid;

    var repo = new Git2.Repository();
    repo.init_repo(".");

    var hex = "e1380b1f60babf677921c4a9b5e92acda0b15e18";
    var git_oid = new Git2.Oid();
    git_oid.oid_from_str(hex);

    var commit1 = new Git2.Commit();
    commit1.commit_lookup(repo, git_oid);

    int ctime = commit1.commit_time();
    int parentcount = commit1.parentcount();

    repo.free()

Revision Walking:
You can traverse the DAG(Directed Acyclic Graph) created by the parent pointers.
    
    using Git2.RevWalk;
    using Git2.Repository;
    using Git2.Oid;
    using Git2.Commit;

    var repo = new Git2.Repository();
    repo.init_repo(".");

    var hex = "e1380b1f60babf677921c4a9b5e92acda0b15e18";
    var git_oid = new Git2.Oid();
    git_oid.oid_from_str(hex);

    var rev_walk = new RevWalk;
    rev_walk.init(repo);
    rev_walk.push(git_oid);

    while(rev_walk.next() == 0){
        var commit1 = new Git2.Commit();
        commit1.commit_lookup(repo, rev_walk.oid);
        int parentcount = commit1.parentcount();
        print(parentcount + " ");
    }
    rev_walk.free();
    repo.free();

Blobs:

    using Git2.Repository;
    using Git2.Oid;
    using Git2.Blob;

    var repo = new Git2.Repository();
    repo.init_repo(".");

    var hex = "a556bfd051e6cd09844eda9ccb372f37629f5385";
    var git_oid = new Git2.Oid();
    git_oid.oid_from_str(hex);

    var blob = new Blob;
    blob.lookup(repo, git_oid);

    var size = blob.raw_size();
    print(size);
    repo.free();

## Contributing

Beer, pull requests and patches welcome! Fork and be merry.

## License

GPLv3. See the LICENSE file for details.
