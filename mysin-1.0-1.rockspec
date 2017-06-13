package = "mysin"
version = "1.0-1"
source = {
   url = "git://github.com/gameaidev/mysin",
   tag = "v1.0",
}
description = {
   summary = "An example for the LuaRocks tutorial.",
   detailed = [[
      This is an example for the LuaRocks tutorial.
      Here we would put a detailed, typically
      paragraph-long description.
   ]],
   homepage = "https://github.com/gameaidev/mysin",
   license = "MIT/X11" -- or whatever you like
}
dependencies = {
   "lua >= 5.1, < 5.4"
   -- If you depend on other rocks, add them here
}
build = {
   -- We'll start here.
   type = "builtin",
   -- Now we need to tell it what to build.
   modules = {
      -- C modules can span multiple files.
      mysin = {"library.c"},
   }
}