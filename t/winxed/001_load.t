#/usr/bin/env winxed

$load "rosella/test.pbc";
$load "./src/git2.pbc";
$load "./src/Git2/Common.pbc";
$load "./src/Git2/Repository.pbc";

class Test_git2_repository_open {

    function test_new_branch() {
        var branch  = new Git2.Branch;
        self.assert.instance_of(branch, 'Git2::Branch');
    }

    function test_new_repo() {
        var repo = new Git2.Repository;
        self.assert.instance_of(repo, 'Git2::Repository');
    }

}
function main[main]() {
    using Rosella.Test.test;
    test(class Test_git2_repository_open);
}
