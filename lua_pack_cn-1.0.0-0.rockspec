package="lua_pack_cn"
version="1.0.0-0"
source = {
   url = "http://10.206.230.177:8080/lua-pack-1.0.5.tar.gz",
   tag = "1.0.0"
}
description = {
   summary = "This is a simple Lua library for packing and unpacking binary data",
   detailed = [[
      This is a simple Lua library for packing and unpacking binary data.
   ]],
   homepage = "https://github.com/mashape/lua-pack",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
build = {
   type = "builtin",
   modules = {
      ["lua_pack"] = {
      sources = { "lua_pack.c" },
    }
   }
}