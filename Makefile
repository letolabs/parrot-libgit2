SHELL := /bin/bash
git2pbc := $(patsubst %.winxed,%.pbc,$(wildcard src/Git2/*.winxed))

all: build

build:
	winxed setup.winxed build

test: rosella
	winxed setup.winxed test

rosella: Rosella/Makefile
	$(MAKE) -C ext/Rosella build
	if [ ! -L rosella ]; \
	then \
	  ln -s ext/Rosella/rosella rosella ; \
	fi

Rosella/Makefile:
	git submodule init
	git submodule update

.PHONY : clean
clean:
	winxed setup.winxed clean
