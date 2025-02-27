package = "lua-match"
version = "1.0-1"
source = {
   url = "git://github.com/jigordev/lua-match.git"
}
description = {
   summary = "An efficient pattern-matching implementation for lua.",
   detailed = [[
      A Lua library that provides a powerful pattern-matching function to handle complex cases based on different conditions, such as values, ranges, and table comparisons.
   ]],
   license = "MIT",
   homepage = "https://github.com/jigordev/lua-match",
   maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["match"] = "src/match.lua",
   }
}
