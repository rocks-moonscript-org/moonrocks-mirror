package = "helloworld"
version = "1.0-1"
source = {
   url = "http://luarocks.test.hulu.com/download/helloworld-1.0-1.tar.gz", 
}
description = {
   summary = "Lua Algorithms Library",
   detailed = [[
      Lua implementation for algorithms and data structures
      found in Java
   ]],
   homepage = "https://github.prod.hulu.com/yann-yao/helloworld-rock",
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

