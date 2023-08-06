rockspec_format = "3.0"
package = "smartquotes.sile"
version = "1.0.0-1"
source = {
  url = "git+https://github.com/Omikhleia/smartquotes.sile.git",
  tag = "v1.0.0",
}
description = {
  summary = "Typographic quotation marks with the SILE typesetting system.",
  detailed = [[
    This package for the SILE typesetter helps obtaining appropriate typographic quotation marks,
    depending on the current language.
  ]],
  homepage = "https://github.com/Omikhleia/smartquotes.sile",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "silex.sile >= 0.1.0",
}
build = {
  type = "builtin",
  modules = {
    ["sile.packages.smartquotes"] = "packages/smartquotes/init.lua",
  },
}
