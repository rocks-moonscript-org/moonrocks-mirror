package = "luakatsu"
version = "2.0-0"
source = {
   url = "git://github.com/Nymphium/luakatsu.git",
   branch = "v2.0-tmp"
}
description = {
   summary = "## install`luarocks --local install luakatsu`",
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
