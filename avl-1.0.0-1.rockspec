package = "avl"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/lalawue/avl.lua/"
}
description = {
   summary = "AVL tree for Lua/LuaJIT",
   detailed = [[
       AVL tree for Lua/LuaJIT
   ]],
   homepage = "https://github.com/lalawue/avl.lua",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
build = {
   type = "builtin",
   modules = {
      list = { "avl.lua" }
   }
}
