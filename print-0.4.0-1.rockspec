package = "print"
version = "0.4.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-print.git",
    tag = "v0.4.0",
}
description = {
    summary = "the print module",
    homepage = "https://github.com/mah0x211/lua-print",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "dump >= 0.1.1",
}
build = {
    type = "builtin",
    modules = {
        print = "print.lua",
    },
}
