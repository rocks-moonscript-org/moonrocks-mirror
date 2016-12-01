package = "gobo-awesome"
version = "0.1-1"
source = {
   url = "git+https://github.com/gobolinux/gobo-awesome.git",
   tag = "0.1",
}
description = {
   summary = "Awesome WM utilities for GoboLinux.",
   detailed = "Awesome WM utilities for GoboLinux.",
   homepage = "https://github.com/gobolinux/gobo-awesome",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["gobo.awesome.docking"] = "gobo/awesome/docking.lua",
      ["gobo.awesome.window_menu"] = "gobo/awesome/window_menu.lua"
   }
}
