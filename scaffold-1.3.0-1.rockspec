package = "scaffold"
version = "1.3.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/scaffold",
   tag = "v1.3.0"
}
description = {
   summary = "A library to assemble directory structures from Lua tables",
   homepage = "https://github.com/darkwiiplayer/scaffold",
   license = "Unlicense"
}
dependencies = {
   "lua ~> 5, >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      scaffold = "scaffold.lua"
   },
   install = {
      bin = {
         "bin/scaffold"
      }
   }
}
