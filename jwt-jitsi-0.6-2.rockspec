package = "jwt-jitsi"
version = "0.6-2"
source = {
  url = "https://github.com/jitsi/lua-jwt/archive/v0.6.tar.gz",
  dir = "lua-jwt-0.6"
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
  "luaossl >= 20151221-0",
  "lua-cjson-ol >= 1.0-1",
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
