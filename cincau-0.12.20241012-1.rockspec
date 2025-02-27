package = 'cincau'
version = '0.12.20241012-1'
source = {
   url = 'git+https://github.com/lalawue/cincau.git',
   tag = '0.12.20241012'
}
description = {
   summary = 'A minimalist, fast and high configurable web framework for LuaJIT on mnet or nginx',
   detailed = [[
      cincau was a minimalist, fast and high configurable web framework for LuaJIT on mnet or nginx
   ]],
   homepage = 'https://github.com/lalawue/cincau',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
   "mooncake",
   "mnet",
   "ffi-hyperparser",
   "sql-orm",
   "lua-resp",
   "lua-bitcask",
   "lua-cjson",
   "ffi-mmkv",
   "ffi-shm-sorted-dict",
}
build = {
   type = "builtin",
   modules = {
      ["mnet-server"] = {
         sources = { "lua/cincau/engine/mnet/mnet_server.c" },
         incdirs = { "src" },
         libraries = {"pthread"},
      },
      ["cincau_prepare"] = "bin/cincau_prepare.lua"
   },
   install = {
      bin = {
         "bin/cincau",
         "bin/cincau_build"
      }
   }
}
