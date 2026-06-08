package = "luasf"
version = "0.5.0-1"

source = {
  url = "git://github.com/HubertRonald/LuaSF.git",
  tag = "v0.5.0"
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
    ["luasf.core"] = "src/luasf/core.lua",
    ["luasf.validation"] = "src/luasf/validation.lua",
    ["luasf.rng"] = "src/luasf/rng.lua",
    ["luasf.descriptive"] = "src/luasf/descriptive.lua",
    ["luasf.sampling"] = "src/luasf/sampling.lua",
    ["luasf.distributions"] = "src/luasf/distributions.lua",
    ["luasf.bivariate"] = "src/luasf/bivariate.lua",
    ["luasf.probability"] = "src/luasf/probability.lua",
    LuaSF = "LuaSF.lua",
    LuaStat = "LuaStat.lua"
  }
}