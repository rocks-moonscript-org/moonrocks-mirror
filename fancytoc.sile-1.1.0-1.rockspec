rockspec_format = "3.0"
package = "fancytoc.sile"
version = "1.1.0-1"
source = {
  url = "git+https://github.com/Omikhleia/fancytoc.sile.git",
  tag = "v1.1.0",
}
description = {
  summary = "Some fancy table of contents for the SILE typesetting system.",
  detailed = [[
    This package for the SILE typesetter provides an altenative and fancy two-level presentation
    with curly braces for a table of contents.
  ]],
  homepage = "https://github.com/Omikhleia/fancytoc.sile",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "ptable.sile >= 3.1.0",
}
build = {
  type = "builtin",
  modules = {
    ["sile.packages.fancytoc"] = "packages/fancytoc/init.lua",
  }
}
