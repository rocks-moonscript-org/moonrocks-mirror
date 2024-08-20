rockspec_format = "3.0"
package = "lusc_luv"
version = "4.0.1-1"
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
   "luv",
}
build = {
   type = "builtin",
   modules = {
      lusc = "gen/lusc/init.lua",
      ["lusc.luv_async"] = "gen/lusc/luv_async.lua",
      ["lusc.internal.util"] = "gen/lusc/internal/util.lua",
      ["lusc.internal.queue"] = "gen/lusc/internal/queue.lua",
   },
}
