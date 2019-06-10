package = "lua-typeof"
version = "0.1-0"
source = {
   url = "git://github.com/iresty/lua-typeof",
   tag = "v0.1"
}
description = {
   summary = "Check the data type for Lua variable",
   homepage = "https://github.com/iresty/lua-typeof",
   license = "Apache License 2.0",
   maintainer = "Yuansheng Wang <membphis@gmail.com>"
}
build = {
   type = "builtin",
   modules = {
      ["typeof"] = "lib/typeof.lua",
   }
}
