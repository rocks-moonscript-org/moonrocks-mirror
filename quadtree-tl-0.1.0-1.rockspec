package = "quadtree-tl"
version = "0.1.0-1"
source = {
  url = "git+https://codeberg.org/leaf-node/quadtree-tl",
  tag = "0.1.0"
}
description = {
  summary = "Quadtree for Lua and Teal",
  detailed = [[
A Lua and Teal module for structuring spatial data,
useful for game maps that contain many virtual objects.
   ]],
  homepage = "https://codeberg.org/leaf-node/quadtree-tl",
  license = "Unlicense"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "command",
  build_command = "./make",
  install_command = "cd gen/ && cp -r ./ '$(LUADIR)'",
}
