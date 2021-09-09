package = "nanostores_lua"
version = "0.0.5-1"
source = {
   url = "git://github.com/cmgriffing/nanostores_lua",
   tag = "v0.0.5"
}
description = {
   summary = "A lua port of nanostores",
   detailed = [[
      Nanostores is a framework agnostic statemanagement library. This repo ports it to lua using TypeScriptToLua.
   ]],
   homepage = "http://github.com/cmgriffing/nanostores_lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["nanostores"] = "nanostores/index.lua"
   }
}