rockspec_format = "3.0"
package = "kah"
version = "1.0.0-2"
source = {
  url = "git+https://github.com/aiez/kahlua"
}
description = {
  summary = "Useful short lua functions (lists, csv, stats, rand, tests)",
  detailed = [[
KAH: one file, ~50 short Lua functions that recur across the
author's Lua projects: list ops (push, map, kap, keysort, slice,
argmin, copy, deepCopy), string coercion and pretty-print (thing,
o), csv streaming, incremental stats (welford, sd, ent, mode,
bisect, cliffsDelta, ks, sames, topTier), a confusion matrix
(Confuse), a portable seeded PRNG, a one-line metatable OO binder,
and a tiny test harness (chk, run1, main). Run `lua kah.lua --all`
for the self-test/demo suite.]],
  homepage = "https://github.com/aiez/kahlua",
  license = "MIT",
  labels = { "utilities", "lists", "csv", "statistics" },
  maintainer = "Tim Menzies <timm@ieee.org>"
}
dependencies = {
  "lua >= 5.3"
}
build = {
  type = "builtin",
  modules = { kah = "kah.lua" }
}
