package = "gobo-awesome-gobonet"
version = "0.1-1"
source = {
   url = "git+https://github.com/gobolinux/gobo-awesome-gobonet.git",
   tag = "0.1",
}
description = {
   summary = "A GoboNet widget for Awesome WM.",
   detailed = "A GoboNet widget for Awesome WM.",
   homepage = "https://github.com/gobolinux/gobo-awesome-gobonet",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["gobo.awesome.gobonet"] = "gobo/awesome/gobonet.lua"
   }
}
