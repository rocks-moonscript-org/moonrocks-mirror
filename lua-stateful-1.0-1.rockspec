package = "lua-stateful"
version = "1.0-1"
source = {
   url = "git://github.com/jigordev/lua-stateful.git"
}
description = {
   summary = "A simple Lua library for managing application state with reactive capabilities.",
   detailed = [[
      A simple Lua library to manage application state with reactive features. Inspired by reactive JavaScript libraries, stateful provides functions for state manipulation and reactive listeners.
   ]],
   license = "MIT",
   homepage = "https://github.com/jigordev/lua-stateful",
   maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
    "middleclass",
}
build = {
   type = "builtin",
   modules = {
      ["stateful"] = "src/stateful.lua",
      ["stateful.state"] = "src/state.lua"
   }
}
