package = "luacheck-formatter-sonarqube"
local v = "0.3.1"
version = v.."-1"

source = {
   url = "git+https://github.com/muulfz/luacheck-formatter-sonar.git",
   tag = "v"..v
}
description = {
   summary = "A sonar formatter for luacheck.",
   detailed = [[
      An external formatter for luacheck.
      This formatter output error in generic issue data format and can be imported by sonar scanner.
   ]],
   homepage = "https://github.com/muulfz/luacheck-formatter-sonar",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, <= 5.4",
   "simple-lua-json >= 0.0.1"
}
build = {
  type = "builtin",
  modules = {
    sonar = "sonar.lua",
  }
}
