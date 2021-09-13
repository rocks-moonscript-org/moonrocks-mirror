package = "lua-resty-crypto"
version = "master-0"
source = {
   url = "git+https://github.com/toruneko/lua-resty-crypto.git",
   branch = "master",
}
description = {
   detailed = [[
### support
- asymmetric: `sm2`, `rsa`, `cms`
- symmetric: `sm4`, `aes`, `hmac`
- digest: `sm3`, `md5`, `sha`, `sha1`, `sha224`, `sha256`, `sha384`, `sha512`]],
   homepage = "https://github.com/toruneko/lua-resty-crypto",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["resty.aes"] = "lib/resty/aes.lua",
      ["resty.cms"] = "lib/resty/cms.lua",
      ["resty.crypto"] = "lib/resty/crypto.lua",
      ["resty.crypto.bio"] = "lib/resty/crypto/bio.lua",
      ["resty.crypto.bn"] = "lib/resty/crypto/bn.lua",
      ["resty.crypto.ec"] = "lib/resty/crypto/ec.lua",
      ["resty.crypto.error"] = "lib/resty/crypto/error.lua",
      ["resty.crypto.evp"] = "lib/resty/crypto/evp.lua",
      ["resty.crypto.openssl"] = "lib/resty/crypto/openssl.lua",
      ["resty.crypto.pem"] = "lib/resty/crypto/pem.lua",
      ["resty.crypto.rsa"] = "lib/resty/crypto/rsa.lua",
      ["resty.crypto.stack"] = "lib/resty/crypto/stack.lua",
      ["resty.crypto.version"] = "lib/resty/crypto/version.lua",
      ["resty.crypto.x509"] = "lib/resty/crypto/x509.lua",
      ["resty.des"] = "lib/resty/des.lua",
      ["resty.digest"] = "lib/resty/digest.lua",
      ["resty.digest.hmac"] = "lib/resty/digest/hmac.lua",
      ["resty.digest.sm3"] = "lib/resty/digest/sm3.lua",
      ["resty.rsa"] = "lib/resty/rsa.lua",
      ["resty.sm2"] = "lib/resty/sm2.lua",
      ["resty.sm4"] = "lib/resty/sm4.lua",
      ["resty.utils.string"] = "lib/resty/utils/string.lua"
   },
   copy_directories = {
      "docs"
   }
}
