package = "coffeetrove"
version = "0.1-1"
source = {
  url = "git://github.com/arnaudleroy-studio/coffeetrove-lua",
  tag = "v0.1"
}
description = {
  summary = "Lua utilities for CoffeeTrove cafe discovery and coffee data",
  detailed = [[
    coffeetrove provides Lua helper functions for the CoffeeTrove platform,
    a global cafe discovery engine. Includes Golden Drop score calculation,
    brew ratio computation, cafe URL generation, and coffee origin data.
    Useful for data analysis, scripting, and integration with CoffeeTrove
    APIs.
  ]],
  homepage = "https://coffeetrove.com",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["coffeetrove"] = "src/coffeetrove.lua"
  }
}
