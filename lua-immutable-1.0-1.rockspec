package = "lua-immutable"
version = "1.0-1"
source = {
   url = "git://github.com/jigordev/lua-immutable.git"
}
description = {
   summary = "A Lua library for creating immutable values, tables, and objects, preventing unintended modifications with strict error handling.",
   detailed = [[
      A lightweight Lua library for enforcing immutability on values, tables, and objects. It prevents unintended modifications by raising errors on mutation attempts, ensuring data integrity in functional and concurrent programming environments.
   ]],
   license = "MIT",
   homepage = "https://github.com/jigordev/lua-immutable",
   maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["immutable"] = "src/immutable.lua",
   }
}
