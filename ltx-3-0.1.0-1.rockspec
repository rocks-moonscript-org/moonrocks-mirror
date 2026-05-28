package = "ltx-3"
version = "0.1.0-1"
source = {
   url = "/tmp/ltx-3-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for LTX 3 tool page metadata.",
   detailed = [[
Minimal metadata package for the LTX 3 tool page.
   ]],
   homepage = "https://www.ltx-3.com/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ltx_3"] = "ltx_3.lua"
   }
}
