package = "modjail"
version = "0.1-1"
source = {
  url = "git://github.com/siffiejoe/lua-modjail.git",
  tag = "v0.1"
}
description = {
  summary = "Isolated global environments for Lua modules",
  detailed = [[
    When loaded this module replaces the searcher/loader function for
    Lua modules to provide every require'd Lua module with its own
    isolated global environment, so that changes made to the global
    environment by a module are confined to that particular module
    alone.
  ]],
  homepage = "https://github.com/siffiejoe/lua-modjail/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.3"
}
build = {
  type = "builtin",
  modules = {
    modjail = "src/modjail.lua"
  }
}

