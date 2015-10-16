package = "profi"
version = "1.3-1"
source = {
   url = "git://github.com/alloyed/ProFi.lua",
   tag = "v1.3",
   dir = "ProFi.lua"
}
description = {
   summary  = "A simple lua profiler that works with LuaJIT and prints a pretty report file in columns.",
   homepage = "https://gist.github.com/perky/2838755",
   license = "MIT",
   maintainer = "Kyle McLamb <alloyed@tfwno.gf>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ProFi = "ProFi.lua"
   }
}
