package = "luajit-ahk"
version = "0.1-1"
source = {
    url = "git://github.com/goreliu/luajit-ahk"
}
description = {
    summary = "LuaJIT FFI binding for AutoHotkey_H",
    detailed = [[
        LuaJIT FFI binding for AutoHotkey_H v1.
    ]],
    homepage = "https://github.com/goreliu/luajit-ahk",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ahk = "src/ahk.lua",
        ahk_demo = "src/ahk_demo.lua",
        utf8fix = "src/utf8fix.lua",
        utf8fix_demo = "src/utf8fix_demo.lua"
    }
}
