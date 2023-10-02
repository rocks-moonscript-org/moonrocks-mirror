rockspec_format = "3.0"
package = "silex.sile"
version = "0.3.0-1"
source = {
  url = "git+https://github.com/Omikhleia/silex.sile.git",
  tag = "v0.3.0",
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
    ["sile.silex"]        = "silex/init.lua",
    ["sile.silex.fork"]   = "silex/fork.lua",
    ["sile.silex.lang"]   = "silex/lang.lua",
    ["sile.silex.fixes"]  = "silex/fixes.lua",
    ["sile.silex.compat"] = "silex/compat.lua",
    ["sile.silex.ast"]    = "silex/ast.lua",

    ["sile.classes.base"]     = "classes/base.lua",
    ["sile.typesetters.base"] = "typesetters/base.lua",

    ["sile.packages.background"]  = "packages/background/init.lua",
    ["sile.packages.cropmarks"]  = "packages/cropmarks/init.lua",
    ["sile.packages.pdf"]  = "packages/pdf/init.lua",
    ["sile.packages.rotate"]  = "packages/rotate/init.lua",
    ["sile.packages.scalebox"]  = "packages/scalebox/init.lua",
    ["sile.packages.url"]  = "packages/url/init.lua",

    ["sile.outputters.base"]  = "outputters/base.lua",
    ["sile.outputters.libtexpdf"]  = "outputters/libtexpdf.lua",
  }
}
