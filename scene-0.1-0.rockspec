package = "scene"
version = "0.1-0"
source = {
  url = "git://github.com/nathaniellam/scene.lua",
  dir = "scene.lua"
}
description = {
   summary = "A simple scene-graph library for Lua",
   detailed = "It has a basic scene hierarchy",
   homepage = "https://github.com/nathaniellam/scene.lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      scene = "scene.lua"
   }
}
