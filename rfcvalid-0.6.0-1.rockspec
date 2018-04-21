package = "rfcvalid"
version = "0.6.0-1"
source = {
    url = "git://github.com/mah0x211/lua-rfcvalid.git",
    tag = "v0.6.0"
}
description = {
    summary = "RFC specification based validation modules",
    homepage = "https://github.com/mah0x211/lua-rfcvalid",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["rfcvalid.util"] = "lib/util.lua",
        ["rfcvalid.1035"] = "lib/1035.lua",
        ["rfcvalid.2616"] = "lib/2616.lua",
        ["rfcvalid.6265"] = "lib/6265.lua",
        ["rfcvalid.6749"] = "lib/6749.lua",
        ["rfcvalid.7230"] = "lib/7230.lua",
        ["rfcvalid.implc"] = {
            sources = { "src/implc.c" }
        },
    }
}
