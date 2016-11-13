package = "redux"
version = "0.1.0-1"
source = {
  url = "git://github.com/talldan/lua-redux.git",
  tag = "v0.1.0"
}
description = {
  summary = "Implementation of the JavaScript redux library in Lua",
  detailed = [[
    Implementation of the JavaScript redux library in Lua.
  ]],
  homepage = "https://github.com/talldan/lua-redux",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["redux.connect"] = "src/connect.lua",
    ["redux.assign"] = "src/assign.lua",
    ["redux.createStore"] = "src/createStore.lua",
    ["redux.init"] = "src/init.lua"
  }
}