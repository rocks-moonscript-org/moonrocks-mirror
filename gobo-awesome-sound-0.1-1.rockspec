package = "gobo-awesome-sound"
version = "0.1-1"
source = {
   url = "git+https://github.com/gobolinux/gobo-awesome-sound.git",
   tag = "0.1",
}
description = {
   detailed = "An ALSA sound widget for Awesome WM, designed for [http://gobolinux.org](GoboLinux).",
   homepage = "https://github.com/gobolinux/gobo-awesome-sound",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["gobo.awesome.sound"] = "gobo/awesome/sound.lua"
   }
}
