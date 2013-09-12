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
$load "./src/Git2/Reference.pbc";
$load "./src/Git2/Remote.pbc";
$load "./src/Git2/RevParse.pbc";
$load "./src/Git2/Object.pbc";
$load "./src/Git2/Tag.pbc";
$load "dumper.pbc";

$include_const 'datatypes.pasm';
$include_const "iglobals.pasm";
$loadlib "io_ops";

namespace Git2 {
    class Repository;
    class Index;
    class Branch;
    class Cache;
    class Config;
    class Commit;
    class Oid;
    class Reference;
    class RevWalk;
    class Remote;
    class Blob;
    class Object;
    class Tag;
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

    function test_atos(){
        string s = "foo";
        string r;

        var x = cstring(s);
        r = atos(x);

        self.assert.equal(r, "foo");
    }

    function open_repo() {
        using Git2.Repository;
        using Git2.Raw.git_repository_open;
        using cstring;
        // TODO: get proper error return value here. Currently error printing is
        // deferred to the C wrapper
        var repo = new Git2.Repository(".");
    }

    function repository_index() {
        using Git2.Repository;
        using Git2.Index;

        // TODO: slashes portable
        var repo = new Git2.Repository(".");
        var git_index = new Git2.Index();

        var rc1        = -1;
        var rc2        = -1;
        var rc3        = -1;
        var rc4        = -1;

        rc1 = repo.is_empty();
        self.assert.equal(rc1, 0);

        rc2 = repo.is_bare();
        self.assert.equal(rc2, 0);

        rc3 = repo.is_shallow();
        self.assert.equal(rc3, 0);

        //Make sure you want to set head.
        //rc4 = repo.set_head("refs/heads/master");
        //self.assert.equal(rc4, 0);

        rc4 = repo.is_detached();
        self.assert.equal(rc4, 0);
        
        git_index.set_index(repo.ptr);

        int ecount = git_index.get_entrycount();
        self.assert.not_null(ecount);

        git_index.free();

        repo.free();
    }

    function create_repo(){
        using Git2.Repository;
        
        var repo = new Git2.Repository();
        var rc1 = repo.init_repo("/tmp/test");
        string path = repo.path();
        self.assert.equal(path, "/tmp/test/.git/");
        repo.free();
    }

    function clone_repo(){
        using Git2.Repository;

        var repo = new Git2.Repository();
        print("Cloning repository...\n");
        repo.clone("https://github.com/letolabs/parrot-libgit2.git", "/tmp/parrot");
        var ptr = repo.get_pointer();
        self.assert.defined(ptr, "Repository not cloned.");

        string cmd = "rm -rf /tmp/parrot";
        int result;
        ${spawnw result, cmd};

    }

    function reference_test(){
        using Git2.Git.repo_head;
        using Git2.Raw.git_reference_name;
        using Git2.Git.branchname;
        using Git2.Reference;
        using cstring;
        
        var repo = new Git2.Repository(".");
        var name = "HEAD";
        
        var ref = new Git2.Reference(repo, name);
        int type = ref.reference_type();
        self.assert.equal(type, 2);

        string ref_name = ref.reference_symbolic_target();
        self.assert.defined(ref_name);
        
        ref.free();
        repo.free();
    }

    function config(){
        using Git2.Config;

        var config = new Git2.Config;
        config.get_config("./config");
        int j = config.get_int32("help.autocorrect");
        self.assert.equal(j, 0);
    }

    function index() {
        var git_index = new Git2.Index;
        self.assert.instance_of(git_index, class Git2.Index);
    }

    function oid() {
        using Git2.Oid;

        var git_oid = new Git2.Oid();
        using Git2.Raw.git_oid_fromstr;
        self.assert.instance_of(git_oid, class Git2.Oid);

        var hex = "599955586da1c3ad514f3e65f1081d2012ec862d";
        git_oid.oid_from_str(hex);
        self.assert.defined(git_oid);
    }

    function commit(){
        using Git2.Commit;
        using Git2.Repository;
        using Git2.Oid;

        var repo = new Git2.Repository(".");

        var hex = "e1380b1f60babf677921c4a9b5e92acda0b15e18";
        
        var commit1 = new Git2.Commit(repo, hex);
        
        int ctime = commit1.commit_time();
        
        int offset = commit1.commit_time_offset();
        self.assert.not_null(offset);

        string message1 = commit1.message();
        self.assert.equal(message1, "NCI updates for libgit2 0.19\n");

        int parentcount = commit1.parentcount();
        self.assert.not_null(parentcount);

        for(int i = 0; i < parentcount; i++){
            var parent_commit = new Git2.Commit;
            parent_commit = commit1.parent(i);
            int pcount2 = parent_commit.parentcount();
            self.assert.not_null(pcount2);
            parent_commit.free();
        }
        commit1.free();
        repo.free();
    }

    function rev_walk(){
        using Git2.RevWalk;
        using Git2.Repository;
        using Git2.Oid;
        using Git2.Commit;

        var repo = new Git2.Repository(".");

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
            commit1.free();
        }
        rev_walk.free();
        repo.free();
    }

    function blob(){
        using Git2.Repository;
        using Git2.Oid;
        using Git2.Blob;

        var repo = new Git2.Repository(".");

        var hex = "a556bfd051e6cd09844eda9ccb372f37629f5385";
        var git_oid = new Git2.Oid();
        git_oid.oid_from_str(hex);

        var blob = new Blob;
        blob.lookup(repo, git_oid);

        var size = blob.raw_size();
        self.assert.not_null(size);
        blob.free();
        repo.free();
    }

    function rev_parse(){
        using Git2.RevParse.rev_parse_single;

        var repo = new Git2.Repository(".");
        var spec = "HEAD^";

        var obj = Git2.rev_parse_single(repo, spec);
        self.assert.defined(obj);
    }

    function remote(){
        using Git2.Remote;
        using Git2.Repository;

        var repo = new Git2.Repository(".");
        var remote = new Git2.Remote;
        remote.create_remote(repo, "Test_Remote", "http://testremote/remote.git");

        var url = "http://testurl/url.git";
        int valid = remote.valid_url(url);
        self.assert.equal(valid, 1);

        int i = remote.set_url(url);
        self.assert.equal(i, 0);

        remote.free();
        //TODO: do this using libgit2. Doesn't seem possible yet.
        string cmd = "git remote rm Test_Remote";
        int result;
        ${spawnw result, cmd};
    }

    function git_tag(){
        using Git2.Oid;
        using Git2.Tag;
        using Git2.Repository;
        using Git2.Object;

        var repo = new Git2.Repository(".");

        var hex = "e1380b1f60babf677921c4a9b5e92acda0b15e18";
        var git_oid = new Git2.Oid();
        int ret = git_oid.oid_from_str(hex);

        var obj = new Git2.Object(repo, git_oid);

        var target_oid = new Git2.Oid();
        var name = "Test_Tag";

        var tag = new Git2.Tag();
        int rc1 = tag.create_lightweight(target_oid, repo, name, obj);
        self.assert.equal(rc1, 0);

        rc1 = tag.delete(repo, name);
        self.assert.equal(rc1, 0);
    }
}
function main[main]() {
    using Rosella.Test.test;
    test(class Test_git2_repository_open);
}
