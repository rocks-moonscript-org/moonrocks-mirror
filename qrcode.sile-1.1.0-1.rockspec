rockspec_format = "3.0"
package = "qrcode.sile"
version = "1.1.0-1"
source = {
  url = "git+https://github.com/Omikhleia/qrcode.sile.git",
  tag = "v1.1.0",
}
description = {
  summary = "QR code package for the SILE typesetting system.",
  detailed = [[
    This package for the SILE typesetter allows printing out a QR code.
  ]],
  homepage = "https://github.com/Omikhleia/qrcode.sile",
  license = "BSD 3-clause",
}
dependencies = {
  "lua >= 5.1",
  "silex.sile >= 0.6.0, < 1.0", 
}
build = {
  type = "builtin",
  modules = {
    ["sile.packages.qrcode"]  = "packages/qrcode/init.lua",
    ["sile.qrencode"]         = "lua-libraries/qrencode.lua",
  }
}
