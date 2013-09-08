#/usr/bin/env winxed

$load "rosella/test.pbc";
$load "./src/git2.pbc";
$load "./src/Git2/Common.pbc";
$load "./src/Git2/Repository.pbc";
$load "./src/Git2/Cache.pbc";
$load "dumper.pbc";

$include_const 'datatypes.pasm';
$include_const "iglobals.pasm";

namespace Git2 {
    class Repository;
    class Index;
    class Branch;
    class Cache;
}

class Test_git2_cache {
    function test_new_cache() {
        var cache  = new Git2.Cache();
        self.assert.instance_of(cache, class Git2.Cache);

        // make sure we can create two in the same scope
        var cache2  = new Git2.Cache();
        self.assert.instance_of(cache2, class Git2.Cache);
    }
}
function main[main]() {
    using Rosella.Test.test;
    test(class Test_git2_cache);
}
