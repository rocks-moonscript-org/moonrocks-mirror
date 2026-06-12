rockspec_format = "3.0"
package = "luamine"
version = "2.0.0-1"
source = {
  -- gist git url; tiny.cc/luamine redirects to the gist page
  url = "git+https://gist.github.com/timm/d2f6e74750271fc68a215d1967d34c29.git"
}
description = {
  summary = "LUAMINE = LUA MINing Engines: lots of useful learners",
  detailed = [[
Three small files, no dependencies beyond Lua 5.3+: generic
helpers (lib), AI primitives (Num, Sym, distance, trees, Bayes —
luamine), and apps (clustering, classification, active learning,
GA/DE/SA/LS optimizers, synthetic data, anomaly detection —
lapps). Includes tut.md, a ten-lecture REPL tutorial. Run
`lua lapps.lua --all` to test.]],
  homepage = "http://tiny.cc/luamine",
  license = "MIT",
  labels = { "ai", "machine-learning", "optimization", "teaching" },
  maintainer = "Tim Menzies <timm@ieee.org>"
}
dependencies = {
  "lua >= 5.3"
}
build = {
  type = "builtin",
  modules = {
    lib     = "lib.lua",
    luamine = "luamine.lua",
    lapps   = "lapps.lua"
  },
  -- ship the tutorial (tut.md only; tut.html is a build artifact)
  install = {
    conf = { "tut.md" }
  }
}
