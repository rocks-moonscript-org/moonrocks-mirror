package = "base45"
version = "1.0.0-1"
source = {
   url = "git://github.com/Neph-Oo/lua-base45",
   tag = "v1.0.0"
}
description = {
   summary = "Lua base45 encoder/decoder",
   detailed = [[
      Lua base45 encoder/decoder for lua5.1+ and luajit.

      Based on draft-faltstrom-base45 from IETF.
      More: https://datatracker.ietf.org/doc/draft-faltstrom-base45/
   ]],
   homepage = "https://github.com/Neph-Oo/lua-base45",
   license = "WTFPL"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   copy_directories = { "examples", "test" },
   modules = {
      base45 = "base45.lua",
   }
}

