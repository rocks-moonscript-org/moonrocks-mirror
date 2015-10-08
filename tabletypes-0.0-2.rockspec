package = "tabletypes"
version = "0.0-2"
description = {
  summary = "Metatables implementing meta table types.",
  detailed = [[
    This is a tiny module for describing metatypes of tables.
  ]],
  homepage = "http://tabletypes.oka.io",
  license = "MIT"
}
source = {
  url = "git://github.com/Okahyphen/tabletypes",
  tag = 'v0.0.2'
}
build = {
  type = "builtin",
  modules = {
    tabletypes = "src/tabletypes.lua"
  }
}
dependencies = {
  "lua >= 5.2"
}
