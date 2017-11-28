package = "adal-lua"
version = "0.0.1-1"
source = {
   url = "git://github.com/alexeldeib/adal-lua.git",
   tag = "v0.0.1"
}
description = {
   license = "MIT"
}
dependencies = {
    "lua-requests >= 1.1",
    "lua-cjson >= 1.0",
    "lbase64 >= 20120820",
    "luacrypto >= 0.3.2"
}
build = {
   type = "builtin",
   modules = {
      adal = "adal.lua",
      hex = "hex.lua",
      utils = "utils.lua"
   }
}
