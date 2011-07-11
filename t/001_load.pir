.sub 'main' :main
    .include 'test_more.pir'
    load_bytecode "src/git2.pbc"
    plan(1)
    ok(1,"Loaded git2.pbc")
.end

