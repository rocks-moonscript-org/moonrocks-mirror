package = "lzw"
version = "1.0-1"
source = {
    url = "git://github.com/rangercyh/lua-lzw.git"
}
description = {
    summary = "A library for doing lzw compress in Lua",
    detailed = [[
        just depended lua and nothing.
    ]],
    homepage = "https://github.com/rangercyh/lua-lzw",
    license = "WTF"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        lzw_tiny = "lzw.lua"
    }
}
