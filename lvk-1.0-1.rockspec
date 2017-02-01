package = "lvk"
version = "1.0-1"
source = {
  url = "https://github.com/last-khajiit/lvk",
  tag = "lvk-1.0"
}
description = {
  summary = "Lua library for vk.com REST API",
  detailed = [[
lvk is Lua wrapper library for REST API of vk.com (ex. luaVkApi). 

Implementation for 5.62 version of API.
]],
  homepage = "https://github.com/last-khajiit/lvk",
  license = "WTFPL2"
}
dependencies = {
  "lua >= 5.2", "dkjson", "luasec"
}
build = {
  type = "builtin",
  modules = {
    lvk = "lvk.lua"
  }
}
