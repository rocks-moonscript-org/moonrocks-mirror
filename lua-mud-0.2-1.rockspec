package = "lua-mud"
version = "0.2-1"
source = {
    url = "git://github.com/SIDN/lua-mud"
}
description = {
    summary = "A Manufacturer Usage Description (MUD) library in Lua (work in progress)",
    detailed = [[
        Work in progress
    ]],
    homepage = "https://github.com/SIDN/lua-mud",
    license = "GPLv3",
}
dependencies = {
    "lua-cjson >= 2.0.0-1",
}
build = {
    type = "builtin",
    modules = {
    },
    install = {
        bin = {
            "bin/lua-mud-read",
            "bin/lua-mud-rulebuilder",
        }
    },
}
