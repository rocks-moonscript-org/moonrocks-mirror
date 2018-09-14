package = "deq"
version = "0.4.3-1"
source = {
    url = "gitrec://github.com/mah0x211/lua-deq.git",
    tag = "v0.4.3"
}
description = {
    summary = "double-ended queue",
    homepage = "https://github.com/mah0x211/lua-deq",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
    "luarocks-fetch-gitrec >= 0.2"
}
build = {
    type = "builtin",
    modules = {
        deq = {
            incdirs = {
                "deps/lauxhlib"
            },
            sources = {
                "src/deq.c"
            }
        }
    }
}
