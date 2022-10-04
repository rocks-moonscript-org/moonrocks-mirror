rockspec_format = "3.0"
package = "base.lua"
version = "0.1.0-1"
source = {
   url = "git://github.com/dwenegar/base.lua.git",
   tag = "0.1.0"
}
description = {
   summary = "A collection of Lua modules",
   license = "BSD-2"
}
dependencies = {
   "lua >= 5.4"
}
build = {
   modules = {
      ["dwenegar.array"] = "src/dwenegar/array.lua",
      ["dwenegar.debugx"] = "src/dwenegar/debugx.lua",
      ["dwenegar.predicates"] = "src/dwenegar/predicates.lua",
      ["dwenegar.stringx"] = "src/dwenegar/stringx.lua",
      ["dwenegar.tablex"] = "src/dwenegar/tablex.lua"
   }
}
test = {
   type = "busted"
}
