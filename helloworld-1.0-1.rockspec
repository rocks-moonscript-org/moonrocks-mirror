package = "helloworld"
version = "1.0-1"
source = {
   url = "git://github.com/yy1993/helloworld",
   tag = "v1.0.1",
}
description = {
   summary = "Lua Algorithms Library",
   detailed = [[
      Lua implementation for algorithms and data structures
      found in Java
   ]],
   homepage = "https://github.com/yy1993/helloworld",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      -- Note the required Lua syntax when listing submodules as keys
      ["helloworld"] = "src/helloworld.lua",
   }
}

