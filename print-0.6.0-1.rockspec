package = "print"
version = "0.6.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-print.git",
    tag = "v0.6.0",
}
description = {
    summary = "the print module",
    homepage = "https://github.com/mah0x211/lua-print",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "string-format-all >= 0.2.0",
}
build = {
    type = "builtin",
    modules = {
        print = "print.lua",
    },
}
