rockspec_format = "3.0"
package = "act"
version = "0.16.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-act.git",
    tag = "v0.16.1",
}
description = {
    summary = "coroutine based synchronously non-blocking operations module",
    homepage = "https://github.com/mah0x211/lua-act",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "lauxhlib >= 0.6.3",
    "denque >= 0.5.2",
    "fork >= 0.4.2",
    "metamodule >= 0.5.1",
    "minheap >= 0.2.0",
    "reco >= 1.6.1",
    "epoll >= 0.6.0",
    "kqueue >= 0.7.0",
    "time-clock >= 0.5.2",
    "time-sleep >= 0.2.3",
    "waitpid >= 0.3.4",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(extra-vars)",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        ACT_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        act = "act.lua",
        ["act.aux"] = "lib/aux.lua",
        ["act.bitset"] = {
            sources = "src/bitset.c",
            incdirs = {
                "src",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["act.callee"] = "lib/callee.lua",
        ["act.context"] = "lib/context.lua",
        ["act.coro"] = "lib/coro.lua",
        ["act.deque"] = "lib/deque.lua",
        ["act.event"] = "lib/event.lua",
        ["act.fork"] = "lib/fork.lua",
        ["act.getcpus"] = "src/getcpus.c",
        ["act.ignsigpipe"] = "src/ignsigpipe.c",
        ["act.lockq"] = "lib/lockq.lua",
        ["act.minheap"] = "lib/minheap.lua",
        ["act.poller"] = "lib/poller.lua",
        ["act.pool"] = "lib/pool.lua",
        ["act.runq"] = "lib/runq.lua",
        ["act.stack"] = {
            sources = "src/stack.c",
            incdirs = {
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}
