package = 'cincau'
version = '0.7.20211002-1'
source = {
   url = 'git+https://github.com/lalawue/cincau.git',
   tag = '0.7.20211002'
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
   "linked-list",
   "mnet",
   "ffi-hyperparser",
   "html-tags",
   "sql-orm",
   "lua-resp",
   "lua-bitcask",
   "lua-cjson",
}
build = {
   type = "builtin",
   modules = {
      ["cincau_prepare"] = "bin/cincau_prepare.lua"
   },
   install = {
      bin = { "bin/cincau" }
   }
}
