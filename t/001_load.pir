.sub 'main' :main :load :init
    .include 'test_more.pir'
    load_bytecode "src/git2.pbc"
    .local pmc lib
    loadlib lib, 'libgit2.so'
    plan(1)
    ok(1,"Loaded git2.pbc")

    test_git_repo_open(lib)
.end

.sub test_git_repo_open
    .param pmc lib
    .local pmc nci
    dlfunc nci, lib, 'git_repository_open', 'ip'
    $P1 = nci($P2)
    isa_ok($P1, 'Integer')
.end

