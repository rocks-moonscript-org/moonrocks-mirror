rockspec_format = "3.0"
package = "textsubsuper.sile"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/Omikhleia/textsubsuper.sile.git",
  tag = "v1.0.0",
}
description = {
  summary = "Real or fake superscripts and subscripts for the SILE typesetting system.",
  detailed = [[
    This package for the SILE typesetter provides ways to typeset superscripted or
    subscripted text, using real characters (i.e. based on OpênType font properties)
    or fake characters (i.e. scaled and raised), with several tuning options.
  ]],
  homepage = "https://github.com/Omikhleia/textsubsuper.sile",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["sile.packages.textsubsuper"] = "packages/textsubsuper/init.lua",
  }
}
