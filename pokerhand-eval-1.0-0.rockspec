package = "pokerhand-eval"
version = "1.0-0"
source = {
  url = "git+https://github.com/AlberTajuelo/pokerhand-eval.git"
}
description = {
  summary = "Poker Texas Hold'em Hand Evaluator using pure Lua",
  detailed = "",
  homepage = "https://github.com/AlberTajuelo/pokerhand-eval.git",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.3",
  "bitop-lua",
  "underscore-dot-lua",
}
build = {
  type = "builtin",
  modules = {
    [ "holdem.analysis" ] = "src/holdem/analysis.lua",
    [ "holdem.card"     ] = "src/holdem/card.lua",
    [ "holdem.lookup"   ] = "src/holdem/lookup.lua",
    [ "holdem.prob"     ] = "src/holdem/prob.lua",
  }
}
