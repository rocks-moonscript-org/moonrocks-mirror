package = "geni3-org"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/geni3_org_luarocks/geni3-org-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Geni3 AI platform site metadata.",
   detailed = [[
Minimal metadata package for the Geni3 AI platform website.
   ]],
   homepage = "https://www.geni3.org",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["geni3_org"] = "geni3_org.lua"
   }
}
