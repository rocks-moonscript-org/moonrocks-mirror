package = "luasf"
version = "0.4.0-1"

source = {
  url = "git://github.com/HubertRonald/LuaSF.git",
  tag = "v0.4.0"
}

description = {
  summary = "Lua Statistics Functions",
  detailed = [[
LuaSF is a lightweight, pure-Lua library for descriptive statistics,
summary statistics, sampling utilities, simulation examples, and random
variable generation.
  ]],
  homepage = "https://github.com/HubertRonald/LuaSF",
  license = "MIT",
  maintainer = "Hubert Ronald"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    luasf = "src/luasf.lua",
    LuaSF = "LuaSF.lua",
    LuaStat = "LuaStat.lua"
  }
}