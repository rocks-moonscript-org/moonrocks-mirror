package = "seedream-5-5"
version = "0.1.1-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/luarocks/seedream_5_5_luarocks/seedream-5-5-0.1.1.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Seedream 5.5 AI image generator platform site metadata.",
   detailed = [[
Minimal metadata package for the Seedream 5.5 AI image generator platform.
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
      ["seedream_5_5"] = "seedream_5_5.lua"
   }
}
