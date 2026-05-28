package = "veo-3-5"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/luarocks/veo_3_5_luarocks/veo-3-5-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Veo 3.5 tool page metadata.",
   detailed = [[
Minimal metadata package for the Veo 3.5 tool page.
   ]],
   homepage = "https://www.voe35.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["veo_3_5"] = "veo_3_5.lua"
   }
}
