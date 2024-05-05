local package_version = "1.2.1"
rockspec_format = "3.0"
package = "LuaText"
version = package_version .. "-0"
source = {
  url = "git://github.com/f4z3r/luatext.git",
  tag = "v" .. package_version,
}
description = {
  summary = "A small library to print colored text",
  detailed = [[
      A libary providing an abstaction over ANSI escape codes
      that allow to print text to terminals in different colors
      and with various modifiers.
   ]],
  homepage = "https://github.com/f4z3r/luatext/tree/main",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    luatext = "./luatext.lua",
  },
}
