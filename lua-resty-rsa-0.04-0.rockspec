package = "lua-resty-rsa"
version = "0.04-0"
source = {
   url = "git://github.com/doujiang24/lua-resty-rsa",
   tag = "v0.04"
}
description = {
   summary = "RSA encrypt/decrypt & sign/verify for OpenResty/LuaJIT",
   homepage = "https://github.com/doujiang24/lua-resty-rsa",
   license = "MIT",
   maintainer = "Dejiang Zhu (doujiang24) doujiang24@gmail.com"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["resty.rsa"] = "lib/resty/rsa.lua",
   }
}
