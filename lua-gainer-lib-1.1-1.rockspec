package = "lua-gainer-lib"
version = "1.1-1"
source = {
   url = "git://github.com/galjonsfigur/lua-gainer-lib",
   tag = "1.1"
}
description = {
   summary = "A simple LuaJIT library to control GAINER board.",
   detailed = [[
   A simple LuaJIT library used to manipulate inputs and outputs of GAINER board.
   More information can be found in project page: https://galjonsfigur.github.io/lua-gainer-lib/
   ]],
   homepage = "https://galjonsfigur.github.io/lua-gainer-lib/",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["gainer"] = "lib/gainer.lua",
      ["gainer.nativeFunctions"] = "lib/nativeFunctions.lua"
   },
   copy_directories = {
      "docs",
      "examples"
   }
}
