package = "happy-horse"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/happy_horse_luarocks/happy-horse-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Happy Horse tool page metadata.",
   detailed = [[
Minimal metadata package for the Happy Horse tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/happy-horse",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["happy_horse"] = "happy_horse.lua"
   }
}
