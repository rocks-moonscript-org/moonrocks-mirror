package = "fsm"
version = "0.2.0-1"
source = {
  url = "git://github.com/unindented/lua-fsm",
  tag = "v0.2.0"
}
description = {
  summary = "Simple FSM implementation.",
  detailed = [[
    A simple finite-state machine implementation for Lua.
  ]],
  homepage = "https://github.com/unindented/lua-fsm",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["fsm"] = "src/fsm.lua"
  },
  copy_directories = {}
}
