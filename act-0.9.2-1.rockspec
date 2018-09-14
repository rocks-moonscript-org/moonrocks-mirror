package = "act"
version = "0.9.2-1"
source = {
    url = "gitrec://github.com/mah0x211/lua-act.git",
    tag = "v0.9.2"
}
description = {
    summary = "coroutine based synchronously non-blocking operations module",
    homepage = "https://github.com/mah0x211/lua-act",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
    "luarocks-fetch-gitrec >= 0.2",
    "argv >= 0.2.1",
    "deq >= 0.4.3",
    "minheap >= 0.1.1",
    "nosigpipe >= 0.1.0",
    "process >= 1.9.0",
    "sentry >= 0.9.1",
}
build = {
    type = "builtin",
    install = {
        bin = {
            act = "bin/act.lua"
        }
    },
    modules = {
        act = "act.lua",
        ['act.aux'] = "lib/aux.lua",
        ['act.aux.syscall'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/aux.c" }
        },
        ['act.callee'] = "lib/callee.lua",
        ['act.coro'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/coro.c" }
        },
        ['act.event'] = "lib/event.lua",
        ['act.hrtimer'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/hrtimer.c" }
        },
        ['act.pipe'] = "lib/pipe.lua",
        ['act.pipe.syscall'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/pipe.c" }
        },
        ['act.runq'] = "lib/runq.lua",
    }
}


