rockspec_format = "3.0"
package = "printoptions.sile"
version = "1.2.0-1"
source = {
  url = "git+https://github.com/Omikhleia/printoptions.sile.git",
  tag = "v1.2.0",
}
description = {
  summary = "Image tools for professional printers with the SILE typesetting system.",
  detailed = [[
    This package for the SILE typesetter helps tuning image resolution and vector rasterization,
    as often requested by professional printers and print-on-demand services.
  ]],
  homepage = "https://github.com/Omikhleia/printoptions.sile",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "silex.sile >= 0.6.0, < 1.0",
}
build = {
  type = "builtin",
  modules = {
    ["sile.packages.printoptions"] = "packages/printoptions/init.lua",
  }
}
