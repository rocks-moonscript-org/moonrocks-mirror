package = "awesome-audiowheel"
version = "0.2.0-1"
source = {
   url = "git+https://github.com/crater2150/awesome-audiowheel",
   tag = "v0.2.0"
}
description = {
   summary = "",
   detailed = [[
audiowheel is a module for [awesome](https://awesomewm.org/). It displays an
arcchart with the current volume for a few seconds whenever a volume key is pressed.]],
   homepage = "https://github.com/crater2150/awesome-audiowheel",
   license = "Apache-2.0"
}
dependencies = {
   "lua >= 5.2, < 5.5",
}
build = {
   type = "builtin",
   modules = {
      audiowheel = "init.lua",
      ["audiowheel.volume-control"] = "volume-control/init.lua"
   }
}
