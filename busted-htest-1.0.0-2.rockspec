package = "busted-htest"
version = "1.0.0-2"
source = {
   url = "git://github.com/hishamhm/busted-htest",
   tag = "1.0.0",
}
description = {
   summary = "A pretty output handler for Busted",
   detailed = [[
      This is an alternative output handler for Busted,
      a unit testing framework for Lua.
      It is based on the gtest output handler that
      is bundled with Busted.
   ]],
   homepage = "https://github.com/hishamhm/busted-htest",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["busted.outputHandlers.htest"] = "src/busted/outputHandlers/htest.lua",
   }
}
