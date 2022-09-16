package = "eansi"
version = "1.2-0"
source = {
  url = "https://github.com/smi11/eansi-lua/archive/refs/tags/v1.2-0.zip",
  dir = "eansi-lua-1.2-0"
}
description = {
  summary = "Easy ANSI Color Maker",
  detailed = [[
    Easy, customizable and flexible way to colorize your terminal output. Convert
    strings describing ANSI colors to extended ANSI escape sequences. Support for
    3,4,8 and 24 bit ANSI escape sequences and thus enabling 8, 16, 256 and 16M
    colors, depending on your terminal capabilities.
  ]],
  homepage = "https://github.com/smi11/eansi-lua",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["eansi"] = "eansi.lua"
  },
  copy_directories = {}
}
