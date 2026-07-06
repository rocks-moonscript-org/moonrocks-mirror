package = "opensimplex2"
version = "0.2.5-1"
source = {
  url = "git+https://codeberg.org/leaf-node/opensimplex2-lua",
  tag = "0.2.5"
}
description = {
  summary = "OpenSimplex2 for Lua and Teal",
  detailed = [[
A Lua and Teal module for quickly generating noise,
which is useful for procedural generation in games.
   ]],
  homepage = "https://codeberg.org/leaf-node/opensimplex2-lua",
  license = "Unlicense"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "command",
  build_command = "./make",
  install_command = "./install '$(LUADIR)' '$(LIBDIR)'",
  modules = {
    opensimplex2f = "opensimplex2f.so",
    opensimplex2s = "opensimplex2s.so",
  }
}
