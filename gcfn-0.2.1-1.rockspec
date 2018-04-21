package = "gcfn"
version = "0.2.1-1"
source = {
    url = "git://github.com/mah0x211/lua-gcfn.git",
    tag = "v0.2.1"
}
description = {
    summary = "create gc function for lua",
    homepage = "https://github.com/mah0x211/lua-gcfn",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["gcfn"] = {
            sources = { "src/gcfn.c" }
        },
    }
}

