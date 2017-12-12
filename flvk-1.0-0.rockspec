package = "flvk"
version = "1.0-0"
source = {
  url = "git://github.com/iZarif/flvk",
  tag = "flvk-1.0"
}
description = {
  summary = "VK.com Lua API wrapper",
  detailed = [[
VK.com Lua API wrapper

Functional style fork of lvk.
]],
  homepage = "https://github.com/iZarif/flvk",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "luasocket",
  "luasec",
  "dkjson"
}
build = {
  type = "builtin",
  modules = {
    flvk = "flvk.lua"
  }
}
