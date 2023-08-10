rockspec_format = "3.0"
package = "labelrefs.sile"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/Omikhleia/labelrefs.sile.git",
    tag = "v0.1.0",
}
description = {
  summary = "Cross-referencing package for the SILE typesetting system.",
  detailed = [[
    This package for the SILE typesetter provides tools for classes
    and packages to support cross-references within a document.
  ]],
  homepage = "https://github.com/Omikhleia/labelrefs.sile",
  license = "MIT",
}
dependencies = {
   "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["sile.packages.labelrefs"] = "packages/labelrefs/init.lua",
  }
}
