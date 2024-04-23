package = "scaffold"
version = "1.2.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/scaffold",
   tag = "v1.2.0"
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
   }
}
