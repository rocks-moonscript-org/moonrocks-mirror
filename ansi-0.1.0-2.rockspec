package = "ansi"
version = "0.1.0-2"
source = {
  url = "https://gitlab.com/Lawful-Lazy/lua-ansi",
  tag = "v0.1.0"
}
description = {
  summary = "Control the Terminal with ANSI Escape Codes",
  detailed = [[
This module implements that ANSI Escape codes defined in
https://en.wikipedia.org/wiki/ANSI_escape_code .]],
  homepage = "https://gitlab.com/Lawful-Lazy/lua-ansi",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ansi = "src/ansi.lua",
    ["ansi.base"] = "src/base.lua",
    ["ansi.color"] = "src/color.lua",
    ["ansi.term"] = "src/term.lua"
  }
}

