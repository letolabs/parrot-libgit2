#/usr/bin/env winxed

$load "rosella/test.pbc";
$load "./src/git2.pbc";
$load "./src/parrotgit.pbc";
$load "./src/Git2/Config.pbc";
$load "./src/Git2/Common.pbc";
$load "./src/Git2/Commit.pbc";
$load "./src/Git2/Oid.pbc";
$load "./src/Git2/Cache.pbc";
$load "./src/Git2/RefCache.pbc";
$load "./src/Git2/Repository.pbc";
$load "./src/Git2/RevWalk.pbc";
$load "./src/Git2/Odb.pbc";
$load "./src/Git2/AttrCache.pbc";
$load "./src/Git2/Blob.pbc";
$load "dumper.pbc";

$include_const 'datatypes.pasm';
$include_const "iglobals.pasm";

namespace Git2 {
    class Repository;
    class Index;
    class Branch;
    class Cache;
    class Config;
    class Commit;
    class Oid;
    class RevWalk;
    class Blob;
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

        // TODO: get proper error return value here. Currently error printing is deferred to the C wrapper
        repo.init_repo(".");
    }

    function repository_index() {
        using Git2.Repository;
        using Git2.Index;
        using cstring;

        var repo = new Git2.Repository();
        var git_index = new Git2.Index();

        var rc1        = -1;
        var rc2        = -1;
        var bool       = -1;

        // TODO: make slashes portable
        repo.init_repo(".");

        git_index.set_index(repo.ptr);

        int ecount = git_index.get_entrycount();
        self.assert.not_null(ecount);

        git_index.free();

        repo.free();
    }

    function show_branch(){
        using Git2.Git.repo_head;
        using Git2.Raw.git_reference_name;
        using Git2.Git.branchname;
        using cstring;
        var repo = new Git2.Repository();

        repo.init_repo(".");
        string str = string(cstring("x"));
        print(str);
        repo.free();
    }

    function config(){
        using Git2.Config;

        var config = new Git2.Config;
        config.get_config("./config");
        int j = config.get_int32("help.autocorrect");
        self.assert.equal(j, 0);
    }

    function git_index() {
        var git_index = new Git2.Index;
        self.assert.instance_of(git_index, class Git2.Index);
    }

    function git_oid() {
        using Git2.Oid;

        var git_oid = new Git2.Oid();
        using Git2.Raw.git_oid_fromstr;
        self.assert.instance_of(git_oid, class Git2.Oid);

        var hex = "599955586da1c3ad514f3e65f1081d2012ec862d";
        git_oid.oid_from_str(hex);
        self.assert.defined(git_oid);
    }

    function git_commit(){
        using Git2.Commit;
        using Git2.Repository;
        using Git2.Oid;

        var repo = new Git2.Repository();
        repo.init_repo(".");

        var hex = "e1380b1f60babf677921c4a9b5e92acda0b15e18";
        var git_oid = new Git2.Oid();
        git_oid.oid_from_str(hex);

        var commit1 = new Git2.Commit();
        commit1.commit_lookup(repo, git_oid);

        int ctime = commit1.commit_time();

        int parentcount = commit1.parentcount();
        self.assert.not_null(parentcount);

        repo.free();
    }

    function rev_walk(){
        using Git2.RevWalk;
        using Git2.Repository;
        using Git2.Oid;
        using Git2.Commit;

        var repo = new Git2.Repository();
        repo.init_repo(".");

        var hex = "e1380b1f60babf677921c4a9b5e92acda0b15e18";
        var git_oid = new Git2.Oid();
        git_oid.oid_from_str(hex);

        var rev_walk = new RevWalk;
        rev_walk.init(repo);
        rev_walk.push(git_oid);

        while(rev_walk.next() == 0){
            var commit1 = new Git2.Commit();
            commit1.commit_lookup(repo, rev_walk.oid);
            int parentcount = commit1.parentcount();
            self.assert.not_null(parentcount);
        }
        rev_walk.free();
        repo.free();
    }

    function blob(){
        using Git2.Repository;
        using Git2.Oid;
        using Git2.Blob;

        var repo = new Git2.Repository();
        repo.init_repo(".");

        var hex = "a556bfd051e6cd09844eda9ccb372f37629f5385";
        var git_oid = new Git2.Oid();
        git_oid.oid_from_str(hex);

        var blob = new Blob;
        blob.lookup(repo, git_oid);

        var size = blob.raw_size();
        self.assert.not_null(size);
        repo.free();
    }

}
function main[main]() {
    using Rosella.Test.test;
    test(class Test_git2_repository_open);
}
