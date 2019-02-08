package = "luaconfig"
version = "0.1.5-0"
source = {
  url = "git://github.com/alekmarinov/luaconfig.git",
  tag = "0.1.5"
}
description = {
  summary = "Lua module providing advance configuration functionality",
  homepage = "https://github.com/alekmarinov/luaconfig",
  license = "MIT",
  maintainer = "Alexander Marinov <alekmarinov@gmail.com>"
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["luaconfig"] = "src/luaconfig.lua",
    ["luaconfig.memory"] = "src/luaconfig/memory/init.lua"
  }
}
