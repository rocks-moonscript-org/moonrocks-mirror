package = "gobo-awesome-battery"
version = "0.1-1"
source = {
   url = "git+https://github.com/gobolinux/gobo-awesome-battery.git",
   tag = "0.1",
}
description = {
   summary = "A battery widget for Awesome WM.",
   detailed = "A battery widget for Awesome WM. This widget was created for [https://gobolinux.org](GoboLinux).",
   homepage = "https://github.com/gobolinux/gobo-awesome-battery",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["gobo.awesome.battery"] = "gobo/awesome/battery.lua"
   }
}
