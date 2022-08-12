---@diagnostic disable: lowercase-global
package = "luafileno"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/FreeMasen/luafileno",
   tag = "v0.1.0-1"
}
description = {
   summary = "This project exposes the stdio C function `luafileno` to convert a `*FILE` into a file descriptor.",
   detailed = [[
This project exposes the stdio C function `luafileno` to convert a `*FILE` into a file descriptor.
]]  ,
   homepage = "https://github.com/FreeMasen/luafileno",
   license = "https://github.com/FreeMasen/luafileno/blob/main/license.txt"
}
build = {
   type = "builtin",
   modules = {
      luafileno = "src/luafileno.c",
   }
}
dependencies = {
   "lua >= 5.1"
}
