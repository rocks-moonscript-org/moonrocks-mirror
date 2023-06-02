rockspec_format = "3.0"
package = "act"
version = "0.12.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-act.git",
    tag = "v0.12.0",
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
    "mah0x211/deque >= 0.5",
    "fork >= 0.2",
    "metamodule >= 0.4",
    "minheap >= 0.2",
    "reco >= 1.5",
    "epoll >= 0.2.1",
    "kqueue >= 0.3.1",
    "waitpid >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        act = "act.lua",
        ["act.aux"] = "lib/aux.lua",
        ["act.callee"] = "lib/callee.lua",
        ["act.context"] = "lib/context.lua",
        ["act.coro"] = "lib/coro.lua",
        ["act.deque"] = "lib/deque.lua",
        ["act.event"] = "lib/event.lua",
        ["act.fork"] = "lib/fork.lua",
        ["act.getcpus"] = "src/getcpus.c",
        ["act.hrtimer"] = "src/hrtimer.c",
        ["act.ignsigpipe"] = "src/ignsigpipe.c",
        ["act.lockq"] = "lib/lockq.lua",
        ["act.minheap"] = "lib/minheap.lua",
        ["act.poller"] = "lib/poller.lua",
        ["act.pool"] = "lib/pool.lua",
        ["act.runq"] = "lib/runq.lua",
        ["act.stack"] = "src/stack.c",
    },
}
