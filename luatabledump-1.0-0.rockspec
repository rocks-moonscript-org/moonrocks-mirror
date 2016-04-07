package = "luaTableDump"
version = "1.0-0"
source = {
    url = "git://github.com/rangercyh/luaTableDump.git"
}
description = {
    summary = "A library for print lua table",
    detailed = [[
        just depended lua and nothing.
    ]],
    homepage = "https://github.com/rangercyh/luaTableDump",
    license = "WTF"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "buildin",
    modules = {
        tiny = "luaTableDump.lua"
    }
}
