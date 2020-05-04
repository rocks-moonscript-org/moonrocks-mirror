package = "gobo-awesome-bluetooth"
version = "0.3-1"
source = {
   url = "git+https://github.com/gobolinux/gobo-awesome-bluetooth.git",
   tag = "0.3"
}
description = {
   summary = "A Bluetooth widget for Awesome WM.",
   detailed = "A Bluetooth widget for Awesome WM.",
   homepage = "https://github.com/gobolinux/gobo-awesome-bluetooth",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["gobo.awesome.bluetooth"] = "gobo/awesome/bluetooth.lua"
   }
}
