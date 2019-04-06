package = "lfunctimer"
version = "0.0.2-1"
source = {
   url = "git+https://github.com/utmhikari/lfunctimer.git",
}
description = {
   summary = "A function execution timer profiling lib for lua",
   detailed = [[
lfunctimer (Lua Function Timer) is a simple lib aiming to collect the stats 
of function execution times
   ]],
   license = "MIT"
}
dependencies = {
   "lua >= 5.2, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      lfunctimer = "src/lfunctimer.lua",
      ["lfunctimer.hook"] = "src/lfunctimer/hook.c",
      ["lfunctimer.util"] = "src/lfunctimer/util.lua",
      ["lfunctimer.config"] = "src/lfunctimer/config.lua",
   },
}