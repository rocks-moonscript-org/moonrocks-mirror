rockspec_format = "3.0"
package = "basedir"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-basedir.git",
    tag = "v0.2.0",
}
description = {
    summary = "lua-basedir is a module that limits file and directory operations to be performed under a specified directory.",
    homepage = "https://github.com/mah0x211/lua-basedir",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "getcwd >= 0.1.0",
    "mediatypes >= 2.0.1",
    "libmagic >= 5.41",
    "path >= 1.1.0",
    "regex >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        basedir = "basedir.lua"
    }
}
