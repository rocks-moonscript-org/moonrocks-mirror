package = "lyretemplates"
version = "1.0-1"
source = {
   url = "https://mid.net.ua/lyre.lua"
}
description = {
   summary = "Barebones Jinja-based templating language for Lua.",
   detailed = [[Turns the Lua runtime itself into a templating language thanks to setfenv, load and table.concat.]],
   homepage = "https://mid.net.ua/lyre.html",
   license = "BSD0"
}
dependencies = {
   "lua >= 5.1, <= 5.4"
}
build = {
   type = "builtin",
   modules = {
      lyre = "lyre.lua",
   }
}
