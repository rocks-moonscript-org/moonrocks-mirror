package = "suno-v6-com"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/luarocks/suno_v6_com_luarocks/suno-v6-com-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Suno V6 AI browser-based generator metadata.",
   detailed = [[
Minimal metadata package for the Suno V6 AI music generator website.
   ]],
   homepage = "https://www.suno-v6.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["suno_v6_com"] = "suno_v6_com.lua"
   }
}
