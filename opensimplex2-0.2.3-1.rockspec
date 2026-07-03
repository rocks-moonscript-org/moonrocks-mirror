package = "opensimplex2"
version = "0.2.3-1"
source = {
  url = "git+https://codeberg.org/leaf-node/opensimplex2-lua",
  tag = "0.2.3"
}
description = {
  summary = "OpenSimplex2 for Lua",
  detailed = [[
A Lua module for quickly generating noise
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
