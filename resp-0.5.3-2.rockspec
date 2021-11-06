rockspec_format = "3.0"
package = "resp"
version = "0.5.3-2"
source = {
    url = "git+https://github.com/mah0x211/lua-resp.git",
    tag = "v0.5.3"
}
description = {
    summary = "RESP (REdis Serialization Protocol) parser",
    homepage = "https://github.com/mah0x211/lua-resp",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
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

