build = {
    type = "builtin",
    modules = {
        ["luacsound.init"] = "luacsound/init.lua",
    },
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
description = {
    detailed = [[
        luacsound provides basic functionality for creating csound files.
        The interface abstracts away some of the peculiarities of csound
        instruments and standard score and enables generating csound files from
        Lua scripts.
    ]],
    homepage = "...",
    license = "MIT/X11",
    summary = "A lua module for creating csound files.",
}
package = "luacsound"
source = {
    url = "git://github.com/mkluwe/luacsound",
    tag = "v0.1",
}
version = "0.1-1"
