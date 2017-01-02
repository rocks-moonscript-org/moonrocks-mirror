package = "strut"
version = "0.0.1-1"
source = {
  url = "git://github.com/ZarifLN/strut",
  tag = "strut-0.0.1"
}
description = {
  summary = "Lua module that adds a few new string functions.",
  detailed = [[
Lua module that adds a few new string functions.
]],
  homepage = "https://github.com/ZarifLN/strut",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["strut"] = "strut.lua"
  }
}