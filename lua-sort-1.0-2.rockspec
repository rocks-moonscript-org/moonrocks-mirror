rockspec_format = "3.0"
package = "lua-sort"
version = "1.0-2"
source = {
   url = "git+https://notabug.org/alimiracle/lua-sort.git",
   tag = "1.0.2"
}
description = {
  summary = "a Lua module that provides implementations of various sorting algorithms.",
  detailed = "LuaSort is a versatile and comprehensive library that offers a wide range of sorting algorithms implemented in Lua, a powerful and lightweight programming language. With LuaSort, developers have access to a rich set of sorting techniques, allowing them to efficiently organize and manipulate data structures in their Lua projects.",

   homepage = "https://notabug.org/alimiracle/lua-sort",
   license = "gpl v3",
  maintainer = "alimiracle <alimiracle@riseup.net>",
  labels = { "sort" }
}
build = {
   type = "builtin",
   modules = {
      ["lua-sort"] = "lua-sort.lua"
   }
}
dependencies = {
   "lua >= 5.1"
}
