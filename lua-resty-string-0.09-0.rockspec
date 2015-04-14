package = "lua-resty-string"
version = "0.09-0"
source = {
  url = "https://github.com/openresty/lua-resty-string/archive/v0.09.tar.gz",
  dir = "lua-resty-string-0.09"
}
description = {
  summary = "",
  detailed = [[
  ]],
  homepage = "",
  license = ""
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["resty.aes"] = "lib/resty/aes.lua",
    ["resty.md5"] = "lib/resty/md5.lua",
    ["resty.random"] = "lib/resty/random.lua",
    ["resty.sha"] = "lib/resty/sha.lua",
    ["resty.sha1"] = "lib/resty/sha1.lua",
    ["resty.sha224"] = "lib/resty/sha224.lua",
    ["resty.sha256"] = "lib/resty/sha256.lua",
    ["resty.sha384"] = "lib/resty/sha384.lua",
    ["resty.sha512"] = "lib/resty/sha512.lua",
    ["resty.string"] = "lib/resty/string.lua"
  }
}
