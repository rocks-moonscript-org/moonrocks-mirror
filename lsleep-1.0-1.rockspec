package = "lsleep"
version = "1.0-1"
source = {
   url = "https://github.com/andrewstarks/lsleep" -- We don't have one yet
}
description = {
   summary = "lsleep: sleep and usleep for lua.",
   detailed = [[
      lsleep contains cross-platform implementations of sleep (Sleep in Windows) and usleep (CreateWaitableTimer.... whatever).
      
      If you're requiring LuaSocket and don't need subsecond sleeping, then you don't need this. LuaSocket has sleep included. I just thought it was weird that there was no way to sleep without requiring a socket library.
   ]],
   homepage = "https://github.com/andrewstarks/lsleep", -- We don't have one yet
   license = "MIT/X11" -- or whatever you like
}
dependencies = {
   "lua >= 5.2"
   -- If you depend on other rocks, add them here
}
build = {
   type = "builtin",
   modules = {
      lsleep = "src/lsleep.c",
   }
}