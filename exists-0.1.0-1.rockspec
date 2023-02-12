package = "exists"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-exists.git",
    tag = "v0.1.0",
}
description = {
    summary = "check whether the specified path exists or not.",
    homepage = "https://github.com/mah0x211/lua-exists",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "fstat >= 0.2.2",
}
build = {
    type = "builtin",
    modules = {
        exists = "exists.lua",
    },
}
