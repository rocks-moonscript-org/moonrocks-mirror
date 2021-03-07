package = "lua-boolexpr"
version = "1.0.0-1"
source = {
    url = "git://github.com/A-G-D/lua-boolexpr",
    tag = "v1.0.0"
}
description = {
    summary = "Boolean Expression library for Lua",
    detailed = [[
        Lua-BoolExpr is a Boolean Expression library for Lua for conveniently
        representing logic gates using functions that return a boolean value.
    ]],
    homepage = "https://a-g-d.github.io/lua-boolexpr/",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        boolexpr = "src/boolexpr.lua"
    },
    copy_directories = {
        "docs",
        "tests"
    }
}