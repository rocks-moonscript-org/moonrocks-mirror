rockspec_format = "3.0"
package = "iovec"
version = "0.2.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-iovec.git",
    tag = "v0.2.1"
}
description = {
    summary = "vectored I/O module",
    homepage = "https://github.com/mah0x211/lua-iovec",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        iovec = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/iovec.c" }
        },
    }
}
