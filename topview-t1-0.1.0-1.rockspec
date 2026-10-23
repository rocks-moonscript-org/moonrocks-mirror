package = "topview-t1"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/topview_t1_luarocks/topview-t1-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Topview T1 AI video generator site metadata.",
   detailed = [[
Minimal metadata package for the Topview T1 text-to-video and image-to-video website.
   ]],
   homepage = "https://topview-t1.net/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["topview_t1"] = "topview_t1.lua"
   }
}
