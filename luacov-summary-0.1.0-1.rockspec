package = "luacov-summary"
version = "0.1.0-1"
source = {
   url = "git://github.com/dwenegar/luacov-summary",
   tag = "0.1.0"
}
description = {
   summary = "LuaCov Summary Reporter",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luacov > 0.5"
}
build = {
   type = "builtin",
   modules = {
      ["luacov.reporter.summary"] = "src/luacov/reporter/summary.lua"
   }
}
