package = "tprint"
version = "0.3-3"
source = {
  url = "https://github.com/smi11/tprint-lua/archive/refs/tags/v0.3-3.zip",
  dir = "tprint-lua-0.3-3"
}
description = {
  summary = "Table Printer",
  detailed = [[
    Easily print reports and various data from tables in tabular format on your terminal.
  ]],
  homepage = "https://github.com/smi11/tprint-lua",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["tprint"] = "tprint.lua"
  },
  copy_directories = {}
}
