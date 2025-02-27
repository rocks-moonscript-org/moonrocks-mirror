package = "leo"
version = "1.0.0-1"
source = {
   url = "file:///home/astra/桌面/lua_test/leo//leo-1.0.0.tar.gz",
   tag = "v1.0.0",
}
description = {
   summary = "A data processing and manipulation toolkit for Lua.",
   detailed = [[
      Leo is a comprehensive Lua module that provides a set of utility functions for data processing and manipulation, including factor encoding, multidimensional array creation, data frame construction, list management, and pipeline operations.
      Maintained by Astra <1572528939@qq.com>
   ]],
   homepage = "https://github.com/Astra-Zhi/leo",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luarocks >= 3.0",
   "lpeg >= 1.0.0"
}
build = {
   type = "builtin",
   modules = {
      leo = "src/leo.lua",
   },
   install = {
      lua = {
         ["leo"] = "src/leo.lua",
      }
   }
}