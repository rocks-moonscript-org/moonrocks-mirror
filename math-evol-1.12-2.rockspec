package = "Math-Evol"
version = "1.12-2"
source = {
   url = "http://cpansearch.perl.org/src/PJB/Math-Evol-1.12/lua/Evol.lua"
}
description = {
   summary = "Evolution search optimization",
   detailed = [[
      This module implements the evolution search strategy.
      This evolution strategy is a random strategy, and as such is
      particularly robust and will cope well with large numbers of variables,
      or rugged objective functions.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/Evol.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["Math.Evol"] = "Evol.lua"
   },
}
