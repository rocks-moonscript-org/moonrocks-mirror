package = "finita"
version = "1.0-0"
source = {
  url = "git://github.com/NickFlexer/finita",
  tag = "v1.0"
}
description = {
  summary = "Finite State Machine implementation for Lua",
  detailed = [[
    Finite State Machine implementation for Lua. Based on Mat Buckland's Game AI by Example
  ]],
  homepage = "https://github.com/NickFlexer/finita",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["fsm"] = "fsm.lua"
  },
  copy_directories = {}
}