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
    class Branch;
}

class Test_git2_repository_open {

    function test_new_branch() {
        var branch  = new Git2.Branch;
        self.assert.instance_of(branch, 'Git2::Branch');
    }

    function test_new_repo() {
        var repo = new Git2.Repository;
        self.assert.instance_of(repo, 'Git2::Repository');
    }

    function test_cstring() {
        var str = cstring("foo");

        self.assert.instance_of(str,'UnManagedStruct');
        self.assert.not_null(str,"cstring is not null");
        self.assert.defined(str,"cstring is defined");
    }

    function open_repo() {
        using Git2.Raw.git_repository_open;
        using cstring;

        var repo = new Git2.Repository;
        var rc;

        // The following line causes a Null PMC Access
        rc = git_repository_open(repo, cstring(".git"));

        self.assert.equal(rc,0);
    }

}
function main[main]() {
    using Rosella.Test.test;
    test(class Test_git2_repository_open);
}
