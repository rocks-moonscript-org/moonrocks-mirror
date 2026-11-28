package = "abm-budget-planner"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/jaizendra-netizen/abm-budget-planner.git",
   tag = "v1.0.0"
}
description = {
   summary = "Lua CLI for LinkedIn ABM budget arithmetic: monthly floor, busy-day and weekly ceilings, fair ad count per ad set, ROAS ",
   detailed = "Lua CLI for LinkedIn ABM budget arithmetic: monthly floor, busy-day and weekly ceilings, fair ad count per ad set, ROAS and ROI, and audience size checks.",
   homepage = "https://www.onegtmlab.dev/blog/linkedin-abm",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["abm_budget_planner"] = "src/abm_budget_planner.lua"
   },
   install = {
      bin = { ["abm-budget"] = "bin/abm-budget" }
   }
}
