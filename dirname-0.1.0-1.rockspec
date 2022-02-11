rockspec_format = "3.0"
package = "dirname"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-dirname.git",
    tag = "v0.1.0",
}
description = {
    summary = "extract the directory part of a pathname.",
    homepage = "https://github.com/mah0x211/lua-dirname",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        dirname = "dirname.lua"
    }
}
