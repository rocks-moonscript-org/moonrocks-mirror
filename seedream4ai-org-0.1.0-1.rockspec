package = "seedream4ai-org"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/seedream4ai_org_luarocks/seedream4ai-org-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Seedream4AI AI platform site metadata.",
   detailed = [[
Minimal metadata package for the Seedream4AI AI platform website.
   ]],
   homepage = "https://www.seedream4ai.org",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["seedream4ai_org"] = "seedream4ai_org.lua"
   }
}
