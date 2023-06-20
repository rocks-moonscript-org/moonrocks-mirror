package = "testcase"
version = "0.11.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-testcase.git",
    tag = "v0.11.1",
}
description = {
    summary = "a small helper tool to run the test files.",
    homepage = "https://github.com/mah0x211/lua-testcase",
    license = "MIT",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "assert >= 0.5.2",
    "errno >= 0.4.0",
}
build = {
    type = "builtin",
    install = {
        bin = {
            testcase = "bin/testcase.lua",
        },
    },
    modules = {
        ["testcase"] = "lib/testcase.lua",
        ["testcase.eval"] = "lib/eval.lua",
        ["testcase.exit"] = "lib/exit.lua",
        ["testcase.filesystem"] = "lib/filesystem.lua",
        ["testcase.getcwd"] = "lib/getcwd.lua",
        ["testcase.getopts"] = "lib/getopts.lua",
        ["testcase.iohook"] = "lib/iohook.lua",
        ["testcase.printer"] = "lib/printer.lua",
        ["testcase.registry"] = "lib/registry.lua",
        ["testcase.runner"] = "lib/runner.lua",
        ["testcase.trim"] = "lib/trim.lua",
        ["testcase.chdir"] = "src/chdir.c",
        ["testcase.close"] = "src/close.c",
        ["testcase.fork"] = "src/fork.c",
        ["testcase.fstat"] = "src/fstat.c",
        ["testcase.getpid"] = "src/getpid.c",
        ["testcase.nosigpipe"] = "src/nosigpipe.c",
        ["testcase.readdir"] = "src/readdir.c",
        ["testcase.realpath"] = "src/realpath.c",
        ["testcase.select"] = "src/select.c",
        ["testcase.shutdown"] = "src/shutdown.c",
        ["testcase.socketpair"] = "src/socketpair.c",
        ["testcase.timer"] = "src/timer.c",
        ["testcase.xpcall"] = "src/xpcall.c",
    },
}
