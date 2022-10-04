package = "Lust-Template"
version = "1.1-1"
source = {
  url = "https://github.com/UrNightmaree/Lust-Template/archive/v1.1.tar.gz",
  dir = "Lust-Template-1.1"
}
description = {
  summary = "Lua String Template",
  detailed = [[
Lua String Template

This package is maintained inside UrNightmaree/Lust-Template repository with some minor fixes.
]],
  homepage = "https://github.com/weshoke/Lust",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["Lust.init"] = "Lust/init.lua",
    ["Lust.lulpeg"] = "Lust/lulpeg.lua"
  }
}
