package = "luaVirtualTypes"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/pessoa736/luaVirtualTypes.git",
   tag = "v0.0.1-1"
}
description = {
   license = "MIT"
}
dependencies = {
   "lua >= 5.4"
}

build = {
   type = "builtin",
   modules = {
      ["luaVirtualTypes"] = "source/init.lua",
   }
}
