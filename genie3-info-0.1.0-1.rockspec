package = "genie3-info"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/genie3_info_luarocks/genie3-info-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Genie3 AI platform site metadata.",
   detailed = [[
Minimal metadata package for the Genie3 AI platform website.
   ]],
   homepage = "https://www.genie3.info",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["genie3_info"] = "genie3_info.lua"
   }
}
