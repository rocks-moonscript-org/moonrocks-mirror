package = "image-atlas"
version = "0.2.0-1"
source = {
  url = "git+https://codeberg.org/leaf-node/image-atlas-lua",
  tag = "0.2.0"
}
description = {
  summary = "Read image atlases for Lua and Teal",
  detailed = [[
A Lua and Teal module for reading libGDX image atlases, for use with LÖVE and any tool like <https://github.com/tommyettinger/libgdx-texturepacker>.
   ]],
  homepage = "https://codeberg.org/leaf-node/image-atlas-lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "tl >= 0.24.8",
}
build = {
  type = "command",
  build_command = "./make",
  install_command = "cd gen/ && cp -r ./ '$(LUADIR)'",
}
