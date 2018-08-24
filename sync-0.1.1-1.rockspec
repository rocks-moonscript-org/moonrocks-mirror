package = "sync"
version = "0.1.1-1"
source = {
    url = "gitrec://github.com/mah0x211/lua-sync.git",
    tag = "v0.1.1"
}
description = {
    summary = "lua-sync provides basic synchronization primitives",
    homepage = "https://github.com/mah0x211/lua-sync",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "luarocks-fetch-gitrec >= 0.2",
}
build = {
    type = "builtin",
    platforms = {
        linux = {
            ['sync.semaphore'] = {
                libraries = { "pthread", "rt" },
            },
        },
        macosx = {
            modules = {
                ['sync.semaphore'] = {
                    libraries = { "pthread" },
                },
            },
        },
    },
    modules = {
        ['sync.semaphore'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/semaphore.c" },
        },
        ['sync.mutex'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/mutex.c" },
            libraries = { "pthread" },
        },
        ['sync.cond'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/cond.c" },
        },
    },
}

