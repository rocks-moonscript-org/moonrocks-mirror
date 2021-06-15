package = "memlimit"
version = "0.1.0-0"
source = {
    url = "git://github.com/mah0x211/lua-memlimit.git",
    tag = "v0.1.0"
}
description = {
    summary = "memory limit module.",
    homepage = "https://github.com/mah0x211/lua-memlimit",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        memlimit = {
            sources = { "src/memlimit.c" },
        },
    }
}
