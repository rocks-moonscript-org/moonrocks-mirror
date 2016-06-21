package = "patch"
version = "0.1.0-1"
source = {
   url = "git://github.com/Alloyed/patch.lua",
   dir = "patch.lua",
   tag = "v0.1.0"
}
description = {
   summary = "diff/undo for lua tables",
   detailed = [[
Patch.lua is a DSL for expressing changes to Lua tables as discrete patches.
Every time a patch is applied, the inverse undo patch is created, which means
patch.lua can be used to easily add multi-level undo to a project.]],
   homepage = "https://github.com/Alloyed/patch.lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      patch = "patch.lua"
   }
}
