rockspec_format = "3.0"
package = "act"
version = "0.10.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-act.git",
    tag = "v0.10.0"
}
description = {
    summary = "coroutine based synchronously non-blocking operations module",
    homepage = "https://github.com/mah0x211/lua-act",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "mah0x211/argv >= 0.3",
    "mah0x211/deq >= 0.4",
    "mah0x211/metamodule >= 0.2",
    "mah0x211/minheap >= 0.2",
    "mah0x211/nosigpipe >= 0.1",
    "mah0x211/pipe >= 0.2",
    "mah0x211/process >= 1.9",
    "mah0x211/reco >= 1.5",
    "mah0x211/sentry >= 0.9",
}
build = {
    type = "builtin",
    modules = {
        act = "act.lua",
        ['act.aux'] = "lib/aux.lua",
        ['act.aux.syscall'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/aux.c" }
        },
        ['act.callee'] = "lib/callee.lua",
        ['act.context'] = "lib/context.lua",
        ['act.event'] = "lib/event.lua",
        ['act.hrtimer'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/hrtimer.c" }
        },
        ['act.pipe'] = "lib/pipe.lua",
        ['act.runq'] = "lib/runq.lua",
    }
}
