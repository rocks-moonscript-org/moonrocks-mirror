package = "lua-checkargs"
version = "1.0-1"
source = {
   url = "git://github.com/jigordev/lua-checkargs.git"
}
description = {
   summary = "checkargs is a Lua library designed for argument validation in Lua functions.",
   detailed = [[
      checkargs is a Lua library designed for argument validation in Lua functions.
      It provides functions to validate function arguments based on various criteria such as type, range, presence of fields in tables, and more.
   ]],
   license = "MIT",
   homepage = "https://github.com/jigordev/lua-checkargs",
   maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["checkargs"] = "src/checkargs.lua",
   }
}
