package = "runstache"
version = "0.0.2-2"
source = {
  url = "https://github.com/urzds/lua-runstache/archive/v0.0.2-2.tar.gz",
  dir = "lua-runstache-0.0.2-2"
}
description = {
  summary = "Standalone {{mustache}} rendering with Lua",
  detailed = [[
    A standalone template instantiation script for mustache templates in Lua.
    Find out more about Mustache at http://mustache.github.com.
  ]],
  homepage = "https://github.com/urzds/lua-runstache/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "argparse >= 0.5",
  "lustache >= 1.3",
  "stdlib >= 41",
}
build = {
  type = "none",
  install = {
    bin = {
      runstache = "runstache.lua",
    }
  },
}
