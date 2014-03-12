package = "netcheck"
version = "0.1.0-1"
source = {
   url = "https://github.com/downloads/Tieske/netcheck/netcheck-0.1.0.tar.gz",
   dir = "netcheck-0.1.0",
}
description = {
   summary = "A LuaSocket addon that checks changes in the network connection",
   detailed = [[
      NetCheck provides a few functions to verify the connection is
      (un)changed. Connects, disconnects, loopback, IP changes etc.
      can be detected with a single call.
   ]],
   license = "MIT/X11",
   homepage = "http://www.thijsschreijer.nl/blog/?page_id=537"
}
dependencies = {
   "luasocket >= 2.0.0",
}
build = {
   type = "builtin",
   modules = {
      ["netcheck"] = "src/netcheck.lua",
   },
   copy_directories = { "doc", "test" },
}
