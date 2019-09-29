package = "flvk"
version = "1.1-0"
source = {
  url = "git://github.com/iZarif/flvk",
  tag = "flvk-1.1"
}
description = {
  summary = "Lua VK API library",
  detailed = [[
Lua VK API library / Lua Vkontakte SDK

Functional style fork of lvk.
]],
  homepage = "https://github.com/iZarif/flvk",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1", "dkjson", "luasec"
}
build = {
  type = "builtin",
  modules = {
    flvk = "flvk.lua"
  }
}
