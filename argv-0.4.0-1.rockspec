rockspec_format = "3.0"
package = "argv"
version = "0.4.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-argv.git",
    tag = "v0.4.0"
}
description = {
    summary = "argument vector handling module",
    homepage = "https://github.com/mah0x211/lua-argv",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        argv = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/argv.c" }
        }
    }
}
