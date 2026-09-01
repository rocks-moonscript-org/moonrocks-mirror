package = "finbu"
version = "1.0-0"
source = {
   url = [[git+http://mid.net.ua/git/mid/finbu]]
}
description = {
   summary = "Extensible build system in Lua",
   detailed = [[
      FinBu is a build system designed to be a Makefile replacement.
      It requires a POSIX environment.
   ]],
   homepage = "https://mid.net.ua/git/mid/finbu",
   license = "CC0",
}
dependencies = {
   "lua >= 5.1, <= 5.5",
   "luaposix",
   "ansicolors",
   "luafilesystem",
}
build = {
   type = "builtin",
   modules = {
      ["finbu"] = "finbu.lua",
   }
}
