package = "lua-jwc"
version = "0.1-4"
source = {
   url = "hg+http://code.zash.se/lua-jwc/",
   tag = "725a68523032"
}
description = {
   summary = "JSON Web Crypto",
   homepage = "https://code.zash.se/lua-jwc",
   license = "MIT/X11"
}
dependencies = {
   "luaossl", "lua-cjson", "luasocket"
}
build = {
   type = "builtin",
   modules = {
      b64url = "b64url.lua",
      jwk = "jwk.lua",
      jws = "jws.lua"
   }
}
