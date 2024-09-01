rockspec_format = "3.0"
package = "barcodes.sile"
version = "1.2.0-1"
source = {
  url = "git+https://github.com/Omikhleia/barcodes.sile.git",
  tag = "v1.2.0",
}
description = {
  summary = "Barcodes package for the SILE typesetting system.",
  detailed = [[
    This package for the SILE typesetter allows printing out an EAN-13 barcode
    suitable for an ISBN (or ISSN, etc.)
  ]],
  homepage = "https://github.com/Omikhleia/barcodes.sile",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "silex.sile >= 0.6.0, < 1.0",
}
build = {
  type = "builtin",
  modules = {
    ["sile.packages.barcodes"]         = "packages/barcodes/init.lua",
    ["sile.packages.barcodes.ean13"]   = "packages/barcodes/ean13/init.lua",
  },
  install = {
    lua = {
      ["sile.packages.barcodes.ean13.fonts.OCRB"] = "packages/barcodes/ean13/fonts/OCRB.otf",
    }
  }
}
