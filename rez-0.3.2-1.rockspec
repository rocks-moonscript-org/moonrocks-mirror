package = "rez"
version = "0.3.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-rez.git",
    tag = "v0.3.2",
}
description = {
    summary = "A simple template engine for lua.",
    homepage = "https://github.com/mah0x211/lua-rez",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "dump >= 0.1.1",
    "loadchunk >= 0.1.2",
}
build = {
    type = "builtin",
    modules = {
        rez = "rez.lua",
        ["rez.compile"] = "lib/compile.lua",
        ["rez.errmap"] = "lib/errmap.lua",
        ["rez.newfenv"] = "lib/newfenv.lua",
        ["rez.nilobj"] = "lib/nilobj.lua",
        ["rez.parse"] = "lib/parse.lua",
        ["rez.seal"] = "lib/seal.lua",
        ["rez.concat"] = {
            sources = { "src/concat.c" }
        },
        ["rez.escape"] = {
            sources = { "src/escape.c" }
        },
    }
}

