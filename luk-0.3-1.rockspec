package = "luk"
version = "0.3-1"

source = {
  url = "git+https://github.com/aiez/luk",
}

description = {
  summary  = "tiny .luk -> Lua transpiler (~120-line module)",
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

    Worked example (fft.luk, a multi-objective regression tree)
    at https://github.com/aiez/luk.
  ]],
  license    = "MIT",
  homepage   = "https://github.com/aiez/luk",
  maintainer = "Tim Menzies <timm@ieee.org>",
}

dependencies = { "lua >= 5.3" }

build = {
  type    = "builtin",
  modules = { luk = "luk.lua" },
  install = { conf = { "README.md", "luk.vim" } },
}
