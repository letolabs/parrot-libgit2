#/usr/bin/env parrot
.sub 'main' :main :load :init
    .include 'test_more.pir'
    plan(3)

    load_bytecode "./src/git2.pbc"
    .local pmc lib

    loadlib lib, '/usr/local/lib/libgit2.so'
    isa_ok(lib, 'ParrotLibrary')
    ok(1,"Loaded git2.pbc")

    test_git_repo_open(lib)
.end

.sub test_git_repo_open
    .param pmc lib
    .local pmc nci, repo
    repo = new ['UnManagedStruct']
    dlfunc nci, lib, 'git_repository_open', 'ip'
    isa_ok(nci, 'NCI')
    $P1 = nci(repo, "foo.git")
    isa_ok($P1, 'Integer')
.end

