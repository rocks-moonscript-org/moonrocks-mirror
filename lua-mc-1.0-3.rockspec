package = "lua-mc"
version = "1.0-3"
source = {
   url = "git+https://github.com/BartuV/lua-mc.git",
}
description = {
   summary = "This lib makes making minecraft datapacks easy",
   detailed = [[
      This lib makes making minecraft datapacks too easy that even a monkey can do it.
   ]],
   homepage = "https://github.com/BartuV/lua-mc",  
   license = "MIT" 
}
dependencies = {
   "lua >= 5.1",
   "luajson >= 1.3.4-1",
   "luafilesystem >= 1.8.0-1",
   "eansi >= 1.1-1"
}
build = {
   type = "builtin",
   modules = {
      main = "/home/BartuBartu/Desktop/Lua/src/main.lua", 
   }
}