rockspec_format = "3.0"
package = "rmdir"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-rmdir.git",
    tag = "v0.2.0",
}
description = {
    summary = "remove a directory file.",
    homepage = "https://github.com/mah0x211/lua-rmdir",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "fstat >= 0.2.0",
    "opendir >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        rmdir = "rmdir.lua"
    }
}
