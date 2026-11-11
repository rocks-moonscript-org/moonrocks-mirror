-- test.sh writes tinyeval-X.Y.Z-1.rockspec from this, with X.Y.Z from _te_version in the runner.
rockspec_format = "3.0"
package = "tinyeval"
version = "0.11.1-1"
source = {
  url = "git+https://github.com/evalship-hq/tinyeval.git",
  tag = "v0.11.1",
}
description = {
  summary = "Evals for the AI calls in your Lua app, run by one bash file.",
  detailed = [[
tinyeval tests the AI calls in your Lua app. Each test case sends your app an input, and lines like contains,
matches and judge grade the reply. Run lua_modules/bin/tinyeval locally and in CI.

The rock adds the tinyeval command and a worker helper that starts your app once and answers every test case:

  local tinyeval = require("tinyeval")
  tinyeval.worker(function(input) return support:answer(input) end)

It needs bash 3.2 or later, and Lua 5.1 to 5.5 or LuaJIT. More at https://tinyeval.com.
]],
  homepage = "https://github.com/evalship-hq/tinyeval/tree/main/packages/lua",
  issues_url = "https://github.com/evalship-hq/tinyeval/issues",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    tinyeval = "packages/lua/tinyeval.lua",
  },
  install = {
    -- The bash runner, unchanged, at share/lua/5.x/tinyeval/tinyeval, where bin/tinyeval looks for it.
    lua = { ["tinyeval.tinyeval"] = "tinyeval" },
    bin = { tinyeval = "packages/lua/bin/tinyeval" },
  },
}
