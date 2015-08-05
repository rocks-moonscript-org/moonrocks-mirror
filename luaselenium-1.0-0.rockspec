package = "LuaSelenium"
version = "1.0-0"
source = {
  url = "git://github.com/mondwan/luaselenium.git"
}
description = {
  summary = "Lua selenium binding",
  detailed = [[
Lua Selenium Driver is a Selenium 1 (Selenium RC) client library that provide a programming interface (API), i.e., a set of functions, which run Selenium commands. Within each interface, there is a programming function that supports each Selenese command.
  ]],
  homepage = "http://luaselenium.sourceforge.net/index.html",
  maintainer = "Oscar Henry <henrytejera@gmail.com>",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "luasocket >= 2.0"
}
build = {
  type = "builtin",
  modules = {
    selenium = "lib/selenium.lua"
  }
}
