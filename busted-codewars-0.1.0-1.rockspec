package = "busted-codewars"
version = "0.1.0-1"
source = {
   url = "git://github.com/codewars/busted-codewars",
   tag = "v0.1.0"
}
description = {
   summary = "Codewars output handler for Busted",
   detailed = [[
      Codewars output handler for Busted, a unit testing framework for Lua.
   ]],
   homepage = "https://github.com/codewars/busted-codewars",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["busted.outputHandlers.codewars"] = "src/busted/outputHandlers/codewars.lua",
   }
}
