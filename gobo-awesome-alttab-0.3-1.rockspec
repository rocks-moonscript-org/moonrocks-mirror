package = "gobo-awesome-alttab"
version = "0.3-1"
source = {
   url = "git+https://github.com/gobolinux/gobo-awesome-alttab.git",
   tag = "0.3",
}
description = {
   summary = "An \"Alt-Tab\" window switching widget for Awesome WM.",
   detailed = [[
An "Alt-Tab" window switching widget for Awesome WM. This is a fork of 
[awesome_alttab](https://github.com/jorenheit/awesome_alttab).]],
   homepage = "https://github.com/gobolinux/gobo-awesome-alttab",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["gobo.awesome.alttab"] = "gobo/awesome/alttab.lua"
   }
}
