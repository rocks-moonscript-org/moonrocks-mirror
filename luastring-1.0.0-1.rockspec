package = "LuaString"
version = "1.0.0-1"
source = {
   url = "git://github.com/well-in-that-case/LuaString.git",
   tag = "1.0.0"
}
description = {
   summary = "An exhaustive extension of string operations for Lua.",
   homepage = "https://well-in-that-case.github.io/LuaString/",
   license = "MIT",
   detailed = [[
      LuaString is light-weight, but expansive extension for Lua's string type. At each step, it's been designed for excellent maintainability and Lua version compatibility. LuaString encourages users to pull code from the source as they please — since there are no internal, nor third-party dependencies — provided you abide by the license.
   ]]
}
build = {
   type = "builtin",
   modules = {
      luastring = "src/luastring.lua"
   }
}
