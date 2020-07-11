package = "utf8fix"
version = "0.1-1"
source = {
    url = "git://github.com/goreliu/luajit-ahk"
}
description = {
    summary = "UTF-8 <-> UTF-16 <-> ANSI for LuaJIT (Windows only)",
    detailed = [[
        "UTF-8 <-> UTF-16 <-> ANSI for LuaJIT (Windows only)"
    ]],
    homepage = "https://github.com/goreliu/luajit-ahk/blob/master/utf8fix.README.md",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        utf8fix = "src/utf8fix.lua",
        utf8fix_demo = "src/utf8fix_demo.lua"
    }
}
