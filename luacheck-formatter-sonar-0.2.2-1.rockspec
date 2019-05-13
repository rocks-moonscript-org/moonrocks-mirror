package = "luacheck-formatter-sonar"
local v = "0.2.2"
version = v.."-1"

source = {
   url = "git+https://github.com/xpol/luacheck-formatter-sonar.git",
   tag = "v"..v
}
description = {
   summary = "A sonar formatter for luacheck.",
   detailed = [[
      An external formatter for luacheck.
      This formatter output error in generic issue data format and can be imported by sonar scanner.
   ]],
   homepage = "https://github.com/xpol/luacheck-formatter-sonar",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "rapidjson >= 0.4.2"
}
build = {
  type = "builtin",
  modules = {
    sonar = "sonar.lua",
  }
}
