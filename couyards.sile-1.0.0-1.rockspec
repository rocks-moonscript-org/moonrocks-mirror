rockspec_format = "3.0"
package = "couyards.sile"
version = "1.0.0-1"
source = {
    url = "git+https://github.com/Omikhleia/couyards.sile.git",
    tag = "v1.0.0",
}
description = {
  summary = "Pendant ornaments (culs-de-lampe) for the SILE typesetting system.",
  detailed = [[
    This package for the SILE typesetter provides several typographic ornaments
    called pendants, culs-de-lampe or couyards, usually for display at end of
    chapters or sections.
  ]],
  homepage = "https://github.com/Omikhleia/couyards.sile",
  license = "MIT",
}
dependencies = {
   "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["sile.packages.couyards"] = "packages/couyards/init.lua",
  },
  install = {
    lua = {
      ["sile.packages.couyards.culs-de-lampe.cul-de-lampe-1"] = "packages/couyards/culs-de-lampe/cul-de-lampe-1.svg",
      ["sile.packages.couyards.culs-de-lampe.cul-de-lampe-2"] = "packages/couyards/culs-de-lampe/cul-de-lampe-2.svg",
      ["sile.packages.couyards.culs-de-lampe.cul-de-lampe-3"] = "packages/couyards/culs-de-lampe/cul-de-lampe-3.svg",
      ["sile.packages.couyards.culs-de-lampe.cul-de-lampe-4"] = "packages/couyards/culs-de-lampe/cul-de-lampe-4.svg",
      ["sile.packages.couyards.culs-de-lampe.cul-de-lampe-5"] = "packages/couyards/culs-de-lampe/cul-de-lampe-5.svg",
      ["sile.packages.couyards.culs-de-lampe.cul-de-lampe-6"] = "packages/couyards/culs-de-lampe/cul-de-lampe-6.svg",
      ["sile.packages.couyards.culs-de-lampe.cul-de-lampe-7"] = "packages/couyards/culs-de-lampe/cul-de-lampe-7.svg",
      ["sile.packages.couyards.culs-de-lampe.cul-de-lampe-8"] = "packages/couyards/culs-de-lampe/cul-de-lampe-8.svg",
      ["sile.packages.couyards.culs-de-lampe.cul-de-lampe-9"] = "packages/couyards/culs-de-lampe/cul-de-lampe-9.svg",
    }
  }
}

