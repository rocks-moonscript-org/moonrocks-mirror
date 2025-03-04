rockspec_format = "3.0"
package = "lusc"
version = "2.0.0-1"
source = {
   url = "git+https://github.com/svermeulen/lusc.git",
   branch = "main"
}
description = {
   summary = "Structured Async/Concurrency for Lua",
   detailed = "Structured Async/Concurrency for Lua",
   homepage = "https://github.com/svermeulen/lusc",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      lusc = "gen/lusc/init.lua",
      ["lusc.util"] = "gen/lusc/util.lua"
   },
}
