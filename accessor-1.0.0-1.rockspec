package = "accessor"
version = "1.0.0-1"

source = {
   url = "git://github.com/Tieske/accessor.lua.git",
   tag = "1.0.0",
}

description = {
   summary = "Access arbitrary depth table keys",
   detailed = [[
     This module implements an easy way to access arbitrary depth
     keys in Lua tables.
   ]],
   license = "MIT/X11",
   homepage = "https://github.com/Tieske/accessor.lua"
}
dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = { accessor = "src/accessor.lua" }
}
