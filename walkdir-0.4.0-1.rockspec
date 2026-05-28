package = "walkdir"
version = "0.4.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-walkdir.git",
    tag = "v0.4.0",
}
description = {
    summary = "walkdir is a Lua module for traversing directories.",
    homepage = "https://github.com/mah0x211/lua-walkdir",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.15.0",
    "errno >= 0.5.0",
    "fstat >= 0.2.3",
    "opendir >= 0.3.0",
}
build = {
    type = "builtin",
    modules = {
        walkdir = "walkdir.lua",
    },
}
