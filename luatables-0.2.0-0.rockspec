local package_version = "0.2.0"
local rockspec_revision = "0"

rockspec_format = "3.0"
package = "LuaTables"
version = package_version .. "-" .. rockspec_revision
source = {
  url = "git://github.com/f4z3r/luatables.git",
  tag = "v" .. package_version,
}
description = {
  summary = "Library to render tables nicely to the terminal.",
  detailed = [[
    A library allowing to format data tables and render them to print in your terminal. This supports
    various features such a borders, styling, formatting cells, adding separators, etc.
  ]],
  labels = { "commandline" },
  homepage = "https://github.com/f4z3r/luatables/tree/main",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1, < 5.4",
  "utf8 >= 0.1",
  "luatext >= 1.0",
}
test_dependencies = {
  "busted >= 2.2",
}
test = {
  type = "busted",
}
build = {
  type = "builtin",
  modules = {
    luatables = "./luatables.lua",
  },
}
