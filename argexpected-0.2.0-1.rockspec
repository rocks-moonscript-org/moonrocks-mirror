package = "argexpected"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-argexpected.git",
    tag = "v0.2.0",
}
description = {
    summary = "Helper module to check the function arguments.",
    homepage = "https://github.com/mah0x211/lua-argexpected",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "string-format >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        argexpected = "argexpected.lua",
    },
}
