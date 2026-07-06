package = "luk"
version = "0.3-2"

source = {
  url = "git+https://github.com/aiez/luk",
}

description = {
  summary  = "tiny .luk -> Lua transpiler (~120-line module) + cli + battery",
  detailed = [[
    luk is the .luk language: Lua plus Python-style indented
    blocks ("if x:" ... dedent closes it), `fn`, `^` for return,
    `:=` locals, `!=`, `elif`, and comprehensions. Explicit
    then/do/else/end still works, so any Lua is (almost)
    valid luk. Generated Lua keeps the source's line numbers.

    The module returns a single function and installs a
    require() hook for .luk modules:
      local luk = require("luk")
      local lua_src = luk(luk_src)

    Ships with:
      luk        cli: transpile + run (luk FILE.luk [args...];
                 luk -d FILE.luk dumps the generated Lua)
      lib.luk    battery: portable PRNG, pretty-print, keysort,
                 slice, csv iterator, argmin, ... (require "lib")
      stats.luk  non-parametric stats: cliffsDelta, ks, sames,
                 topTier (require "stats")
      fft.luk    worked example: multi-objective regression tree
      tests      tests.lua + test_*.luk (installed under etc/)
  ]],
  license    = "MIT",
  homepage   = "https://github.com/aiez/luk",
  maintainer = "Tim Menzies <timm@ieee.org>",
}

dependencies = { "lua >= 5.3" }

build = {
  type    = "builtin",
  modules = { luk = "luk.lua" },
  install = {
    bin  = { luk = "luk" },
    lua  = { lib = "lib.luk", stats = "stats.luk", fft = "fft.luk" },
    conf = { "README.md", "luk.vim", "tests.lua",
             "test_lib.luk", "test_stats.luk", "test_fft.luk" },
  },
}
