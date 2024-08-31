package = 'lua_bezier'
version = "0.1-2"
source = {
   url = "https://github.com/qwwshs/lua_bezier/releases/download/v0.1/lua_bezier-0.1-2.zip",
   tag = "v1.0"
}
description = {
   homepage = "https://github.com/qwwshs/lua_bezier/",
    license = "Unlicense license"
}
build = {
   type = "builtin",
   modules = {
      lua_bezier = "lua_bezier.lua"
   }
}
