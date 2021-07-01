package = "balance-tree"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/lalawue/balance-tree.lua/",
   tag = "1.0.0"
}
description = {
   summary = "Self-balancing Binary Search Tree for Lua",
   detailed = [[
	Self-balancing Binary Search Tree for Lua"
   ]],
   homepage = "https://github.com/lalawue/balance-tree.lua",
   license = "MIT/X11",
   maintainer = "lalawue <suchaaa@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["balance-tree"] = "balance-tree.lua"
   }
}
