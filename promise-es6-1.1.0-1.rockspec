package = "promise-es6"
version = "1.1.0-1"
source = {
  url = "https://github.com/aimingoo/Promise/archive/v1.1.tar.gz",
  dir = "Promise-1.1"
}
description = {
  summary = "Promise module in Lua",
  detailed = [[
    Promise module in Lua, ES6 Promises full supported.
  ]],
  homepage = "https://github.com/aimingoo/Promise",
  license = "Apache-2.0"
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["Promise"]  = "Promise.lua",
  }
}
