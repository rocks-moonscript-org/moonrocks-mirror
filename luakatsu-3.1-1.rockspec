package = "luakatsu"
version = "3.1-1"
source = {
   url = "git://github.com/Nymphium/luakatsu/",
   tag = "v3.1"
}
description = {
   summary = "Aikatsu! --- Idol KATSUDOU, with Lua",
   detailed = "Let's Aikatsu! with Lua!!",
   homepage = "https://github.com/Nymphium/luakatsu/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      luakatsu = "luakatsu.lua",
      ["luakatsu.bin.find_birthday"] = "luakatsu/bin/find_birthday.lua",
      ["luakatsu.bin.find_keyword"] = "luakatsu/bin/find_keyword.lua",
      ["luakatsu.bin.makemt"] = "luakatsu/bin/makemt.lua",
      ["luakatsu.bin.tag"] = "luakatsu/bin/tag.lua",
      ["luakatsu.lib.groups"] = "luakatsu/lib/groups.lua",
      ["luakatsu.lib.idols"] = "luakatsu/lib/idols.lua",
      ["luakatsu.local"] = "luakatsu/local.lua",
      uakatsu = "uakatsu.lua"
   }
}
