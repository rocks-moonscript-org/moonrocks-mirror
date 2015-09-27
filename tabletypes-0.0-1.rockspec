-- TEMPLATE, NOT PUBLISHED YET --

package = "tabletypes"
version = "0.0-1"
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
  tag = 'v0.0.1'
}
build = {
  type = "builtin",
  modules = {
    randbytes = "src/tabletypes.lua"
  }
}
dependencies = {
  "lua >= 5.2"
}
