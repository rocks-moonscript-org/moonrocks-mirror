package = "luacheck-formatter-sonar"
version = "0.1-1"
source = {
   url = "https://github.com/xpol/luacheck-formatter-sonar"
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
