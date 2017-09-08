package = "flvk"
version = "1.0-1"
source = {
  url = "git://github.com/iZarif/flvk.git",
  tag = "flvk-1.0"
}
description = {
  summary = "Lua library for integration with vk.com REST API",
  detailed = [[
Lua library for integration with REST API of vk.com. Implementation for 5.68 API version.

Functional style fork of lvk.
]],
  homepage = "https://github.com/iZarif/flvk",
  license = "MIT"
}
dependencies = {
  "lua >= 5.2", "dkjson", "luasec"
}
build = {
  type = "builtin",
  modules = {
    flvk = "flvk.lua"
  }
}
