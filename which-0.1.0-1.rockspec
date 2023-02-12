package = "which"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-which.git",
    tag = "v0.1.0",
}
description = {
    summary = "locate a program file in the user's path.",
    homepage = "https://github.com/mah0x211/lua-which",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        which = "which.lua",
    },
}
