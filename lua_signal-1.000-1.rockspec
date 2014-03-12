package = "Lua_Signal"
version = "1.000-1"
source = {
   url = "http://www.unm.edu/~batrick/lua_signal/files/lua_signalv1.000.tar.gz",
   dir = "."
}
description = {
   summary = "Library for handling signals",
   detailed = [[
      Lua support for ANSI C signals.
   ]],
   homepage = "http://www.unm.edu/~batrick/lua_signal/",
   -- license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "module",
   modules = {
      signal = "lsignal.c"
   }
}
