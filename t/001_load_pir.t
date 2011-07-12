#/usr/bin/env parrot
.include 'datatypes.pasm'

.sub 'main' :main
    .include 'test_more.pir'
    plan(7)

    load_bytecode "./src/git2.pbc"
    .local pmc lib

    # TODO: don't hardcode this
    loadlib lib, '/usr/local/lib/libgit2.so'
    isa_ok(lib, 'ParrotLibrary')
    ok(1,"Loaded git2.pbc")

    test_git_repo_open(lib)
.end

.sub test_git_repo_open
    .param pmc lib
    .local pmc nci, repo

    $P0 = get_hll_global ['Git2'], 'git_repository'

    $I0 = .DATATYPE_PTR | .DATATYPE_REF_FLAG
    set $P0, [.DATATYPE_INT; $I0; .DATATYPE_PTR]
    dlfunc nci, lib, 'git_repository_open', $P0
    isa_ok(nci, 'NCI')

    $P0 = str_to_cstring("notarepo.git")
    ($I1, repo) = nci(repo, $P0)
    free_cstring($P0)
    isnt($I1, 0, "non-existant repo reports error")
    $I1 = isnull repo
    ok($I1, "invalid repo object populated")

    $P0 = str_to_cstring("./.git")
    ($I1, repo) = nci(repo, $P0)
    free_cstring($P0)
    is($I1, 0, "this repo loaded")
    $I1 = isnull repo
    nok($I1, "repo object populated")
.end

.sub str_to_cstring
    .param string s
    $P0 = null
    $P0 = dlfunc $P0, "Parrot_str_to_cstring", "ppS"
    $P1 = getinterp
    $P1 = $P0($P1, s)
    .return ($P1)
.end

.sub free_cstring
    .param pmc cstr
    $P0 = null
    $P0 = dlfunc $P0, "Parrot_str_free_cstring", "vp"
    $P0(cstr)
.end
