#/usr/bin/env winxed

$load "rosella/test.pbc";
$load "./src/git2.pbc";
$load "./src/Git2/Common.pbc";
$load "./src/Git2/Repository.pbc";
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
        using Git2.ptr.git_repository_open;
        using cstring;

        var repo = new Git2.Repository;
        var rc;

        rc = git_repository_open(repo.ptr, cstring(".git"));

        self.assert.equal(rc,0);
    }

    function repository_index() {
        using Git2.ptr.git_repository_open;
        using Git2.ptr.git_repository_index;
        using cstring;

        var repo      = new Git2.Repository;
        var git_index = new Git2.Index;
        var rc        = -1;

        self.assert.instance_of(git_index, class Git2.Index);

        git_repository_open(repo.ptr, cstring(".git"));

        rc = git_repository_index(git_index.ptr);

        self.assert.instance_of(git_index, class Git2.Index);
        self.assert.equal(rc,0);
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
