SHELL := /bin/bash
git2pbc := $(patsubst %.winxed,%.pbc,$(wildcard src/Git2/*.winxed))

all: build

build: nci pbclib

test: build rosella
	parrot-nqp t/harness

pbclib: $(git2pbc) src/git2.pbc

%.pir: %.winxed
	winxed -c -o $@ $<

%.pbc: %.pir
	parrot -o $@ $<

rosella: Rosella/Makefile
	$(MAKE) -C Rosella build
	ln -s Rosella/rosella rosella

nci: src/git2.nci

src/git2.nci:
	echo -e '# THIS FILE IS GENERATED, edit ./bin/header2nci.pl to make changes here' > src/git2.nci ; \
	echo -e "[package]\nGit2::Raw\n\n[lib]\n\nlibgit2.so\n\n[defs]\n" >> src/git2.nci ; \
	export LIBGIT2_INSTALL_DIR=`pkg-config --variable=includedir libgit2` ;\
	perl ./bin/header2nci.pl $$LIBGIT2_INSTALL_DIR/git2/git2.h >> src/git2.nci ; \
	for i in $$LIBGIT2_INSTALL_DIR/git2/*.h; do  perl ./bin/header2nci.pl $$i >> src/git2.nci ; done

Rosella/Makefile:
	git submodule init
	git submodule update

.PHONY : clean
clean:
	-rm -rf $(git2pbc) src/git2.nci rosella
