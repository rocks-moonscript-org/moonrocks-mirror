package = "lua-deresute"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/Khronos31/lua-deresute",
   tag = "v0.0.1"
}
description = {
   homepage = "https://github.com/Khronos31/lua-deresute",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3",
   "lua-cjson 2.1.0-1",
   "luasocket",
   "luasec",
   "base64",
   "lua-messagepack-lua53",
   "openssl"
}
build = {
   type = "builtin",
   modules = {
      ["deresute.api"] = "src/api.lua",
      ["deresute.util"] = "src/util.lua"
   },
   install = {
      bin = {
         ["dere-mkconfig"] = "bin/dere-mkconfig.lua"
      }
   }
}
