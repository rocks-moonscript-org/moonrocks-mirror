rockspec_format = "3.0"
package = "silex.sile"
version = "0.7.0-1"
source = {
  url = "git+https://github.com/Omikhleia/silex.sile.git",
  tag = "v0.7.0",
}
description = {
  summary = "Extension layer for SILE and resilient",
  detailed = [[
    Some common bricks, compatility features, opinionated hacks,
    and eXperimental eXpansions.
  ]],
  homepage = "https://github.com/Omikhleia/silex.sile",
  license = "MIT",
}
dependencies = {
   "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["sile.silex"]          = "silex/init.lua",
    ["sile.silex.fork"]     = "silex/fork.lua",
    ["sile.silex.lang"]     = "silex/lang.lua",
    ["sile.silex.fixes"]    = "silex/fixes.lua",
    ["sile.silex.compat"]   = "silex/compat.lua",
    ["sile.silex.ast"]      = "silex/ast.lua",
    ["sile.silex.override"] = "silex/override.lua",
    ["sile.silex.types"]    = "silex/types.lua",

    ["sile.silex.classes.base"]     = "silex/classes/base.lua",
    ["sile.silex.typesetters.base"] = "silex/typesetters/base.lua",

    ["sile.silex.packages.background"]  = "silex/packages/background/init.lua",
    ["sile.silex.packages.color"]       = "silex/packages/color/init.lua",
    ["sile.silex.packages.cropmarks"]   = "silex/packages/cropmarks/init.lua",
    ["sile.silex.packages.pdf"]         = "silex/packages/pdf/init.lua",
    ["sile.silex.packages.rotate"]      = "silex/packages/rotate/init.lua",
    ["sile.silex.packages.rules"]       = "silex/packages/rules/init.lua",
    ["sile.silex.packages.scalebox"]    = "silex/packages/scalebox/init.lua",
    ["sile.silex.packages.url"]         = "silex/packages/url/init.lua",

    ["sile.silex.outputters.base"]      = "silex/outputters/base.lua",
    ["sile.silex.outputters.libtexpdf"] = "silex/outputters/libtexpdf.lua",
  }
}
