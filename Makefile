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
	echo '# THIS FILE IS GENERATED, edit ./bin/header2nci.pl to make changes here' > src/git2.nci ; \
	echo "[package]\nGit2::Raw\n\n[lib]\n\nlibgit2.so\n\n[defs]\n" >> src/git2.nci ; \
	perl ./bin/header2nci.pl /usr/local/include/git2.h >> src/git2.nci ; \
	for i in /usr/include/git2/*; do  perl ./bin/header2nci.pl $$i >> src/git2.nci ; done

Rosella/Makefile:
	git submodule init
	git submodule update

.PHONY : clean
clean:
	-rm -f $(git2pbc) src/git2.nci rosella
