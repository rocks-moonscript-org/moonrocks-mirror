package = "sfcrand-lua5.3"
version = "1.0-1"
source = {
   url = "git+https://github.com/tertu-m/sfcrand-lua.git"
}
description = {
   summary = "SFC64 random number generator for Lua 5.3+",
   homepage = "https://github.com/tertu-m/sfcrand-lua",
   license = "See sfcrand.lua"
}
dependencies = {
   'lua >= 5.3'
}
build = {
   type = 'builtin',
   modules = {
      sfcrand = "lua-5.3/sfcrand.lua"
   }
}
