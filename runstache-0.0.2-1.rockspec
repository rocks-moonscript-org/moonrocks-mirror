package = "runstache"
version = "0.0.2-1"
source = {
  url = "https://github.com/urzds/lua-runstache/archive/v0.0.2-1.tar.gz",
  dir = "lua-runstache-0.0.2-1"
}
description = {
  summary = "Standalone {{mustache}} rendering with Lua",
  detailed = [[
    A standalone template instantiation script for mustache templates in Lua.
    Find out more about Mustache at http://mustache.github.com.
  ]],
  homepage = "https://github.com/urzds/runstache/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lustache >= 1.3"
}
build = {
  type = "none",
  install = {
    bin = {
      runstache = "runstache.lua",
    }
  },
}
