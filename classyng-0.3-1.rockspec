package = "classyng"
version = "0.3-1"
source = {
  url = "git://github.com/amsitlab/lua-classyng.git",
}
description = {
  summary = "A library for class-based OO.",
  detailed = [[
    This Lua module provides a functable for defining classes in OO
    programming, featuring multiple inheritance with fast method
    lookups, and multimethods.
  ]],
  homepage = "https://github.com/amsitlab/lua-classynb/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    classyng = "src/classyng.lua"
  }
}

