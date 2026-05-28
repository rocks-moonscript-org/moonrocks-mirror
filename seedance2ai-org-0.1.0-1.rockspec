package = "seedance2ai-org"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/seedance2ai_org_luarocks/seedance2ai-org-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Seedance2AI AI platform site metadata.",
   detailed = [[
Minimal metadata package for the Seedance2AI AI platform website.
   ]],
   homepage = "https://www.seedance2ai.org",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["seedance2ai_org"] = "seedance2ai_org.lua"
   }
}
