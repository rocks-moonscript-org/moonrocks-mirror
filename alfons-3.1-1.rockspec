package = "alfons"
version = '3.1-1'
source = {
  url = "git://github.com/daelvn/alfons",
  tag = 'v3.1'
}
description = {
  summary = "Small program to run tasks for your project",
  detailed = [[
    alfons is a small script utility that lets you run tasks
    from a file (Lua or MoonScript), to better manage your
    project with tasks such as clean, compile, etc. To run
    tasks from a MoonScript file, you will need the
    moonscript rock.]],
  homepage = "https://github.com/daelvn/alfons",
}
dependencies = {
  "filekit >= 1.2.2",
  "ansikit",
  "lua >= 5.1"
}
build = {
  type = "none",
  install = {
    bin = {
      alfons = "alfons.lua"
    }
  }
}
