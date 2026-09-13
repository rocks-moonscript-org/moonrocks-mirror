package = "lua-resty-gmsm"
version = "1.0.3-1"
source = {
   url = "git+https://github.com/Taoja/lua-resty-gmsm",
   tag = "v1.0.3"
}
description = {
  summary = "Chinese SM2/SM3/SM4 implementation based on OpenSSL",
  detailed = [[
    A Lua module for Chinese cryptography algorithms implemented on top of OpenSSL,
    including SM2, SM3 and SM4.
  ]],
  license = "MIT",
  homepage = "https://github.com/Taoja/lua-resty-gmsm",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["resty.gmsm"] = "lib/resty/gmsm.lua",
    ["resty.gmsm.base64"] = "lib/resty/gmsm/base64.lua",
    ["resty.gmsm.err_print"] = "lib/resty/gmsm/err_print.lua",
    ["resty.gmsm.hex"] = "lib/resty/gmsm/hex.lua",
    ["resty.gmsm.load_any"] = "lib/resty/gmsm/load_any.lua",
    ["resty.gmsm.sm2"] = "lib/resty/gmsm/sm2.lua",
    ["resty.gmsm.sm3"] = "lib/resty/gmsm/sm3.lua",
    ["resty.gmsm.sm4"] = "lib/resty/gmsm/sm4.lua",
  }
}
