package = "Gear"
version = "0.02-1"
source = {
   url = "git://github.com/basiliscos/lua-gear",
   tag = "v0.02-1",
}
description = {
   summary = "Inversion of Control implementation in lua",
   detailed = [[
       Inversion of Control implementation in lua a-la Spring Framework in Java. No dependency injection
   ]],
   homepage = "https://github.com/basiliscos/lua-gear",
   license = "Artistic-2.0"
}
dependencies = {
   "lua >= 5.2",
}
build = {
   type = "builtin",
   modules = {
      ['gear'] = 'src/gear.lua',
   },
}
