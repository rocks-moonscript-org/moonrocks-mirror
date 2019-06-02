package="lua_fun"
version="0.4.1-0"
source = {
    url = "git+https://github.com/italomaia/lua_fun",
    tag = "0.4.1-0"
}
description = {
    summary = "set of useful functional programming tools to speed up development with lua",
    detailed = [[
        Lua simplicity is its biggest strengh and weakness. The lack of
        common functional programming utilities can hinder development speed
        quite much in the long run.

        This package's goal is to help with that by providing a pure lua, simple,
        yet powerful set of **FP** functions out-of-the-box to make the wonderful
        lua programming experience also super fast and natural.

        This module has **luafun** and **lodash** as strong influences.
    ]],
    license = "MIT/X11"
}
dependencies = {
   "lua >= 5.3"
}
build = {
    type = "builtin",
    modules = {
        lua_fun = "src/lua_fun.lua"
    }
}