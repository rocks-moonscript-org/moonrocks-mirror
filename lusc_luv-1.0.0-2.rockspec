rockspec_format = "3.0"
package = "lusc_luv"
version = "1.0.0-2"
source = {
   url = "git+https://github.com/svermeulen/lusc_luv.git",
   branch = "main"
}
description = {
   summary = "Structured Async/Concurrency for Lua using Luv",
   detailed = "Structured Async/Concurrency for Lua using Luv",
   homepage = "https://github.com/svermeulen/lusc_luv",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lusc",
   "luv",
}
build = {
   type = "builtin",
   modules = {
      lusc_luv = "gen/lusc_luv/init.lua",
      ["lusc_luv.background_runner"] = "gen/lusc_luv/background_runner.lua"
   },
}
