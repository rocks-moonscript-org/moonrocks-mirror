package = "jwt"
version = "0.4-0"
source = {
  url = "https://github.com/Olivine-Labs/lua-jwt/archive/v0.4.tar.gz",
  dir = "lua-jwt-0.4"
}
description = {
  summary = "A library for encoding and decoding json web tokens.",
  detailed = [[
  ]],
  homepage = "",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "busted >= 1.7-1",
  "luacrypto >= 0.3.2-1",
  "basexx >= 0.2.0-0"
}
build = {
  type = "builtin",
  modules = {
    ["jwt"]       = "src/jwt.lua",
    ["jwt.jws"]   = "src/jwt/jws.lua",
    ["jwt.jwe"]   = "src/jwt/jwe.lua",
    ["jwt.plain"] = "src/jwt/plain.lua",
  }
}
