package = "simple-ecs"
version = "0.1.0-1"
source = {
  url = "git+https://codeberg.org/leaf-node/simple-ecs",
  tag = "0.1.0"
}
description = {
  summary = "ECS for Lua and Teal",
  detailed = [[
A Lua and Teal module for the "Entigy, Component, System" 
framework, used to update entities in games.
]],
  homepage = "https://codeberg.org/leaf-node/simple-ecs",
  license = "Unlicense"
}
dependencies = {
  "lua >= 5.1",
  "tl >= 0.24.8",
}
build = {
  type = "command",
  build_command = "./make",
  install_command = "cp -r gen/* src/* '$(LUADIR)'",
}
