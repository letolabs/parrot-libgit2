#/usr/bin/env winxed

$load "rosella/test.pbc";
$load "./src/git2.pbc";
$load "./src/Git2/Common.pbc";

class Test_git2_repository_open {

    function test_repo_open() {
        var branch  = new Git2.Branch;
        self.assert.instance_of(branch, 'Git2::Branch');
    }

}
function main[main]() {
    using Rosella.Test.test;
    test(class Test_git2_repository_open);
}
