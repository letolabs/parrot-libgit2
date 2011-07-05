
nci:
	echo '# THIS FILE IS GENERATED, edit ./bin/header2nci.pl to make changes here' > src/git2.nci ; \
	for i in /usr/local/include/git2/*; do  perl ./bin/header2nci.pl $$i >> src/git2.nci ; done
