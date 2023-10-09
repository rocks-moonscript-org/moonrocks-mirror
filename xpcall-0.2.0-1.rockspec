package = "xpcall"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-xpcall.git",
    tag = "v0.2.0",
}
description = {
    summary = "this is a polyfill module that provides an xpcall API that allows passing arguments to functions in lua versions less than 5.2.",
    homepage = "https://github.com/mah0x211/lua-xpcall",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        xpcall = "xpcall.lua",
    },
}
