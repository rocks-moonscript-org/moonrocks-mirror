package = "tpdu"
version = "0.1.0-1"

source = {
  url = "https://github.com/moteus/lua-tpdu/archive/v0.1.0.zip",
  dir = "lua-tpdu-0.1.0",
}

description = {
  summary    = "Lua low-level TPDU decoder",
  homepage   = "https://github.com/moteus/lua-tpdu",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "bit32"
}

build = {
  copy_directories = {'test'},

  type = "builtin",

  modules = {
    ["tpdu"          ] = "src/lua/tpdu.lua",
    ["tpdu.bit"      ] = "src/lua/tpdu/bit.lua",
    ["tpdu.bcd"      ] = "src/lua/tpdu/bcd.lua",
    ["tpdu.bit7"     ] = "src/lua/tpdu/bit7.lua",
    ["tpdu.utils"    ] = "src/lua/tpdu/utils.lua",
  }
}
