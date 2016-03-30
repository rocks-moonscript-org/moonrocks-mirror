package="lua_pack"
version="1.0.4-0"
source = {
   url = "https://github.com/mashape/lua-pack/archive/1.0.4.tar.gz",
   dir = "lua-pack-1.0.4",
   tag = "1.0.4"
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
