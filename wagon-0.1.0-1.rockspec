
package = "wagon"
version = "0.1.0-1"
source = {
  url = "https://github.com/lux-archive/wagon"
}
description = {
  summary = "Wagon is a minimalist bundler for Lua rocks.",
  detailed = [[
Wagon is a minimalist bundler for Lua rocks. It sets up a local rocktree
directory and directs both Lua and LuaRocks to use that as a working path
for adding and searching rocks.]],
  homepage = "https://github.com/lux-archive/wagon",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "none",
  install = { bin = { "bin/wagon", "bin/wagon-deps.lua" } }
}

