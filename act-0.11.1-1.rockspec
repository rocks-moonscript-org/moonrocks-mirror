rockspec_format = "3.0"
package = "act"
version = "0.11.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-act.git",
    tag = "v0.11.1",
}
description = {
    summary = "coroutine based synchronously non-blocking operations module",
    homepage = "https://github.com/mah0x211/lua-act",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.5",
    "mah0x211/argv >= 0.3",
    "mah0x211/deque >= 0.4",
    "mah0x211/fork >= 0.2",
    "mah0x211/metamodule >= 0.4",
    "mah0x211/minheap >= 0.2",
    "mah0x211/nosigpipe >= 0.1",
    "mah0x211/reco >= 1.5",
    "mah0x211/epoll >= 0.2.0",
    "mah0x211/kqueue >= 0.3.0",
}
build = {
    type = "builtin",
    modules = {
        act = "act.lua",
        ['act.aux'] = "lib/aux.lua",
        ['act.callee'] = "lib/callee.lua",
        ['act.context'] = "lib/context.lua",
        ['act.event'] = "lib/event.lua",
        ['act.getcpus'] = {
            sources = {
                "src/getcpus.c",
            },
        },
        ['act.hrtimer'] = {
            sources = {
                "src/hrtimer.c",
            },
        },
        ['act.poller'] = "lib/poller.lua",
        ['act.pool'] = "lib/pool.lua",
        ['act.runq'] = "lib/runq.lua",
    },
}
