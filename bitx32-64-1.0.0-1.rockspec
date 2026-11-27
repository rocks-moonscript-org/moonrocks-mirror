package = "Bitx32-64"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/Joao-Feijao/Lua-Bitx32-64/",
   tag = "v1.0.0-1"
}
description = {
   summary = "Lua bit32 for Lua 5.3+ using native bitwise and without C dependencies",
   detailed = [[
      Gives Lua 5.2 bit32 module support for Lua 5.4 and Lua 5.5 (and even Lua 5.3) with a builtin integration made up entirely using Lua.
      Also features a bit64 extra module for other applications.
   ]],
   homepage = "https://github.com/Joao-Feijao/Lua-Bitx32-64/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   module = {
      ["Bit32-53"] = "Bit32-53.lua",
      ["Bit32-54"] = "Bit32-54.lua",
      ["Bit64-53"] = "Bit64-53.lua",
      ["Bit64-54"] = "Bit64-54.lua"
   }
}