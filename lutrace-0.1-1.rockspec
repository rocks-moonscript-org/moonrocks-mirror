package = "lutrace"
version = "0.1-1"
source = {
   url = "git://github.com/hishamhm/lutrace.git",
   tag = "v0.1",
}
description = {
   summary = "A tiny module for tracing functions executed by a Lua script.",
   detailed = [[
      luTrace (Lua Micro Trace) is a tiny stand-alone module that prints a
      trace of functions executed by a script (like strace, ltrace, etc.) 
      Loading this module automatically sets a debug hook that activates tracing.
   ]],
   homepage = "https://github.com/hishamhm/lutrace",
   license = "MIT/X11",
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
build = {
   type = "builtin",
   modules = {
      ["lutrace"] = "lutrace.lua",
   }
}
