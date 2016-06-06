package = "luawalker"
version = "1.0-1"
source = {
   url = "https://github.com/eywalker/luawalker"
}
description = {
   license = "MIT"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
     hello = "hello.lua"
   }
}
