rockspec_format = "3.0"
package = "lua-resty-jwt"
version = "0.4.0-1"
source = {
   url = "git+https://github.com/cdbattags/lua-resty-jwt.git",
   tag = "v0.4.0"
}
description = {
   summary = "JWT for ngx_lua and LuaJIT.",
   detailed = [[
    JWS and JWE (JWT) signing, verification, encryption and decryption
    for OpenResty. Requires OpenResty (ngx_lua and LuaJIT) built with
    OpenSSL, and lua-resty-openssl.
  ]],
   homepage = "https://github.com/cdbattags/lua-resty-jwt",
   license = "Apache License Version 2"
}
dependencies = {
   "lua >= 5.1",
   "lua-resty-openssl >= 1.1.0"
}
build = {
   type = "builtin",
   modules = {
      ["resty.evp"] = "lib/resty/evp.lua",
      ["resty.hmac"] = "third-party/lua-resty-hmac/lib/resty/hmac.lua",
      ["resty.jwt"] = "lib/resty/jwt.lua",
      ["resty.jwt-validators"] = "lib/resty/jwt-validators.lua",
      ["resty.jwt-zlib"] = "lib/resty/jwt-zlib.lua",
      ["resty.jwt.jwk"] = "lib/resty/jwt/jwk.lua",
      ["resty.utils"] = "lib/resty/utils.lua"
   }
}
