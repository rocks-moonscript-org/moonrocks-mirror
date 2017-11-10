package = "resp"
version = "0.5.2-1"
source = {
    url = "gitrec://github.com/mah0x211/lua-resp.git",
    tag = "v0.5.2"
}
description = {
    summary = "RESP (REdis Serialization Protocol) parser",
    homepage = "https://github.com/mah0x211/lua-resp",
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
        resp = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/resp.c" },
        }
    }
}

