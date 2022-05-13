package = "rmdir"
version = "0.2.1-1"
source = {
    url = "git+https://github.com/mah0x211/lua-rmdir.git",
    tag = "v0.2.1",
}
description = {
    summary = "remove a directory file.",
    homepage = "https://github.com/mah0x211/lua-rmdir",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "fstat >= 0.2.2",
    "opendir >= 0.2.1",
}
build = {
    type = "builtin",
    modules = {
        rmdir = "rmdir.lua"
    }
}
