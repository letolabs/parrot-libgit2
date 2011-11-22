#/usr/bin/env winxed

$load "rosella/test.pbc";
$load "./src/git2.pbc";
$load "./src/Git2/Common.pbc";
$load "./src/Git2/Repository.pbc";
$load "./src/Git2/Odb.pbc";
$load "./src/Git2/Cache.pbc";
$load "./src/Git2/RefCache.pbc";
$load "dumper.pbc";

$include_const 'datatypes.pasm';
$include_const "iglobals.pasm";

namespace Git2 {
    class Repository;
    class Index;
    class Branch;
}

class Test_git2_repository_open {

    function test_new_branch() {
        var branch  = new Git2.Branch;
        self.assert.instance_of(branch, class Git2.Branch);
    }

    function test_new_repo() {
        var repo = new Git2.Repository;
        self.assert.instance_of(repo, class Git2.Repository);
    }

    function test_cstring() {
        var str = cstring("foo");

        self.assert.instance_of(str,'UnManagedStruct');
        self.assert.not_null(str,"cstring is not null");
        self.assert.defined(str,"cstring is defined");
    }

    function open_repo() {
        using Git2.Repository;
        using Git2.Raw.git_repository_open;
        using cstring;

        var repo = new Git2.Repository();

        var rc = git_repository_open(repo.ptr, cstring(".git"));

        self.assert.equal(rc,0);
    }

    function repository_index() {
        using Git2.Repository;
        using Git2.Index;
        using Git2.Raw.git_repository_open;
        using Git2.Raw.git_repository_index;
        using Git2.Raw.git_repository_free;
        using Git2.Raw.git_index_open_inrepo;
        using Git2.Raw.git_repository_is_bare;
        using Git2.Raw.git_repository_database;
        using cstring;

        var repo      = new Git2.Repository();
        var git_index = new Git2.Index();
        self.assert.instance_of(git_index, class Git2.Index);

        var rc1        = -1;
        var rc2        = -1;

        // TODO: make slashes portable
        rc1 = git_repository_open(repo.ptr, cstring("./.git"));
        self.assert.equal(rc1,0);

        var gindex = git_index.ptr;
        var grepo  = repo.ptr;

        rc2 = git_repository_index(gindex);
        self.assert.equal(rc2,0);

        var bool = git_repository_is_bare(repo.ptr);
        self.assert.equal(bool,0);

        var odb = git_repository_database(repo.ptr);
        self.assert.defined(odb);

        // coredumps inside libgit2
        // git_repository_free(repo.ptr);
    }

    function git_index() {
        var git_index = new Git2.Index;
        self.assert.instance_of(git_index, class Git2.Index);
    }

}
function main[main]() {
    using Rosella.Test.test;
    test(class Test_git2_repository_open);
}
