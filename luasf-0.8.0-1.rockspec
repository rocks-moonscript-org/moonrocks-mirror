package = "luasf"
version = "0.8.0-1"

source = {
  url = "git://github.com/HubertRonald/LuaSF.git",
  tag = "v0.8.0"
}

description = {
  summary = "Lua Statistics Functions",
  detailed = [[
LuaSF is a lightweight, pure-Lua library for descriptive statistics,
shape statistics, bivariate statistics, probability helpers, sampling
utilities, simulation examples, random variable generation, and simple
formula-based regression summaries.
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
    ["luasf.shape"] = "src/luasf/shape.lua",
    ["luasf.sampling"] = "src/luasf/sampling.lua",
    ["luasf.distributions"] = "src/luasf/distributions.lua",
    ["luasf.bivariate"] = "src/luasf/bivariate.lua",
    ["luasf.probability"] = "src/luasf/probability.lua",
    ["luasf.regression"] = "src/luasf/regression.lua",
    LuaSF = "LuaSF.lua",
    LuaStat = "LuaStat.lua"
  }
}
