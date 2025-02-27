package = "fsrouter"
version = "0.8.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-fsrouter.git",
    tag = "v0.8.0",
}
description = {
    summary = "filesystem based url router",
    homepage = "https://github.com/mah0x211/lua-fsrouter",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "basedir >= 0.5.1",
    "error >= 0.11.0",
    "extname >= 0.1.0",
    "libmagic >= 5.41",
    "loadchunk >= 0.1.2",
    "mediatypes >= 2.0.1",
    "plut >= 0.4.0",
    "print >= 0.5.0",
}
build = {
    type = "builtin",
    modules = {
        fsrouter = "fsrouter.lua",
        ["fsrouter.categorizer"] = "lib/categorizer.lua",
        ["fsrouter.default"] = "lib/default.lua",
        ["fsrouter.readdir"] = "lib/readdir.lua",
    },
}
