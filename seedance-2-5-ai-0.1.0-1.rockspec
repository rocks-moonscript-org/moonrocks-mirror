package = "seedance-2-5-ai"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/seedance_2_5_ai_luarocks/seedance-2-5-ai-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Seedance 2.5 AI video generator site metadata.",
   detailed = [[
Minimal metadata package for the Seedance 2.5 AI video generator website.
   ]],
   homepage = "https://seedance2-5ai.net/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["seedance_2_5_ai"] = "seedance_2_5_ai.lua"
   }
}
