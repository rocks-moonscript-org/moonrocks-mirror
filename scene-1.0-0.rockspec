package = "scene"
version = "1.0-0"
source = {
  url = "git://github.com/nathaniellam/scene.lua",
  dir = "scene.lua",
  tag = "v1.0.0"
}
description = {
   summary = "A simple 2D scene-graph library for Lua",
   detailed = "It has a basic scene hierarchy, bounding boxes and event handling",
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
