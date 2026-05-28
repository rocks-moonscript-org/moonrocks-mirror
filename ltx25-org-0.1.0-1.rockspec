package = "ltx25-org"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/luarocks/ltx25_org_luarocks/ltx25-org-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for LTX 2.5 website metadata.",
   detailed = [[
Minimal metadata package for the LTX 2.5 website.
   ]],
   homepage = "https://www.ltx25.org",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ltx25_org"] = "ltx25_org.lua"
   }
}
