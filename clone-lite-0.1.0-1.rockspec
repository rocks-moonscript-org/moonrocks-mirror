package = "clone-lite"
version = "0.1.0-1"
source = {
  url = "git+https://codeberg.org/leaf-node/clone-lite",
  tag = "0.1.0"
}
description = {
  summary = "Cloning of simple tables, for Teal and Lua",
  detailed = [[
A Teal and Lua module for cloning basic tables
]],
  homepage = "https://codeberg.org/leaf-node/clone-lite",
  license = "Unlicense"
}
dependencies = {
  "lua >= 5.1",
  "tl >= 0.24.8",
}
build = {
  type = "command",
  build_command = "./make",
  install_command = "cp src/clone-lite.tl gen/clone-lite.lua '$(LUADIR)'",
}
