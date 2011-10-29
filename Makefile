
all: build

build: nci pbclib

test: build
	parrot-nqp t/harness

pbclib: src/Git2/*.winxed src/git2.pir
	winxed -c -o src/Git2/Common.pir src/Git2/Common.winxed
	winxed -c -o src/Git2/Cache.pir src/Git2/Cache.winxed
	winxed -c -o src/Git2/RefCache.pir src/Git2/RefCache.winxed
	winxed -c -o src/Git2/Repository.pir src/Git2/Repository.winxed
	parrot -o src/Git2/Common.pbc src/Git2/Common.pir
	parrot -o src/Git2/Repository.pbc src/Git2/Repository.pir
	parrot -o src/Git2/Cache.pbc src/Git2/Cache.pir
	parrot -o src/Git2/RefCache.pbc src/Git2/RefCache.pir
	parrot -o src/git2.pbc src/git2.pir

nci:
	echo '# THIS FILE IS GENERATED, edit ./bin/header2nci.pl to make changes here' > src/git2.nci ; \
	echo "[package]\nGit2::Raw\n\n[lib]\n\nlibgit2.so\n\n[defs]\n" >> src/git2.nci ; \
	perl ./bin/header2nci.pl /usr/local/include/git2.h >> src/git2.nci ; \
	for i in /usr/local/include/git2/*; do  perl ./bin/header2nci.pl $$i >> src/git2.nci ; done

clean:
	-rm src/*.pbc src/git2.nci
