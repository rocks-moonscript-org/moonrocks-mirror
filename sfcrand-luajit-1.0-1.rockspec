package = "sfcrand-luajit"
version = "1.0-1"
source = {
   url = "git+https://github.com/tertu-m/sfcrand-lua.git"
}
description = {
   summary = "SFC64 random number generator for LuaJIT 2.1",
   homepage = "https://github.com/tertu-m/sfcrand-lua",
   license = "See sfcrand.lua"
}
dependencies = {
   'lua ~> 5.1'
}
build = {
   type = 'builtin',
   modules = {
      sfcrand = "luajit/sfcrand.lua"
   }
}
