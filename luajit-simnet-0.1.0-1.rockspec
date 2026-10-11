package = "luajit-simnet"
version = "0.1.0-1"
source = {
   url = "git://github.com/henriquerosaconta2025-hue/personal_lua_projects",
   tag = "v0.1.0"
}
description = {
   summary = "luajit-simnet.lua is a simple lua networking lib that i made with my freetime. its self contained.",
   detailed = "network library for luajit. does not work on vanilla lua, disponible for linux only. i made it with my freetime.",
   homepage = "https://github.com/henriquerosaconta2025-hue/personal_lua_projects/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["luajit_replit.net"] = "net.lua"
   }
}
