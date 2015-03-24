package = "luakatsu"
version = "1.3-1"
source = {
   url = "git://github.com/Nymphium/luakatsu.git",
   tag = "v1.3"
}
description = {
   summary = "Aikatsu! --- Idol KATSUDOU, with Lua",
   detailed = "Let's Aikatsu! with Lua!!",
   homepage = "https://github.com/Nymphium/luakatsu",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.2"
}
build = {
   type = "builtin",
   modules = {
      luakatsu = "luakatsu.lua",
      ['luakatsu.bin.makemt'] = "luakatsu/bin/makemt.lua",
      ['luakatsu.lib.groups'] = "luakatsu/lib/groups.lua",
      ['luakatsu.lib.idols'] = "luakatsu/lib/idols.lua",
      uakatsu = "uakatsu.lua"
   }
}
