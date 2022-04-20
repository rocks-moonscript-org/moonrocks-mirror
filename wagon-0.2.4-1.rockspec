
package = "wagon"
version = "0.2.4-1"
source = {
  url = "git://github.com/lux-archive/wagon",
  tag = "0.2.4"
}
description = {
  summary = "Wagon is a minimalist bundler for Lua rocks.",
  detailed = [[
Wagon is a minimalist bundler for Lua rocks. It sets up a local rocktree
directory and directs both Lua and LuaRocks to use that as a working path
for adding and searching rocks.]],
  homepage = "https://github.com/lux-archive/wagon",
  maintainer = "kazuo256@gmail.com",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "luafilesystem"
}
build = {
  type = "builtin",
  install = {
    bin = { "bin/wagon" }
  },
  modules = {
    ['wagon'] = "lua/wagon/init.lua",
    ['wagon.builder'] = "lua/wagon/builder.lua",
    ['wagon.bundler'] = "lua/wagon/bundler.lua",
    ['wagon.defs'] = "lua/wagon/defs.lua",
    ['wagon.driver'] = "lua/wagon/driver.lua",
    ['wagon.fs'] = "lua/wagon/fs.lua",
    ['wagon.log'] = "lua/wagon/log.lua",
  }
}

