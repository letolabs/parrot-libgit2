
nci:
	echo '# THIS FILE IS GENERATED, edit ./bin/header2nci.pl to make changes here' > src/git2.nci ; \
	echo "[package]\nGit\n\n[lib]\n\nlibgit2.so\n\n[defs]\n" >> src/git2.nci ; \
	perl ./bin/header2nci.pl /usr/local/include/git2.h >> src/git2.nci ; \
	for i in /usr/local/include/git2/*; do  perl ./bin/header2nci.pl $$i >> src/git2.nci ; done

pbc:
	parrot -o src/git2.pbc src/git2.pir
