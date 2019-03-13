package="lua_table"
version="0.4"
source = {
    url = "https://github.com/italomaia/lua_table",
    tag = "0.4"
}
description = {
    summary = "set of useful table functions to speed up development with lua",
    detailed = [[
        Lua simplicity is its biggest strengh and weakness. The lack of
        common table manipulation and functional programming tools can
        hinder development speed quite much in the long run.
        This package's goal is to help with that by providin a pure lua, simple,
        yet powerful set of table manipulation functions out-of-the-box to
        make the wonderful lua programming experience also super fast and natural.
    ]],
    license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        lua_table = "src/lua_table.lua"
    }
}