package = "fsrouter"
version = "0.4.4-1"
source = {
    url = "git+https://github.com/mah0x211/lua-fsrouter.git",
    tag = "v0.4.4",
}
description = {
    summary = "filesystem based url router",
    homepage = "https://github.com/mah0x211/lua-fsrouter",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "basedir >= 0.4.1",
    "extname >= 0.1.0",
    "isa >= 0.2.1",
    "libmagic >= 5.41",
    "loadchunk >= 0.1.2",
    "mediatypes >= 2.0.1",
    "plut >= 0.4.0",
}
build = {
    type = "builtin",
    modules = {
        fsrouter = "fsrouter.lua",
        ["fsrouter.categorizer"] = "lib/categorizer.lua",
        ["fsrouter.default"] = "lib/default.lua",
    },
}
