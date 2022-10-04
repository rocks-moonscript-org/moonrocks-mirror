package = "bintrees"
version = "1.1-1"
source = {
   url = "git+https://github.com/guicaulada/lua-bintrees.git"
}
description = {
   summary = "This package provides Binary and Red-Black Search Trees written in Lua.",
   detailed = "This package provides Binary and Red-Black Search Trees written in Lua. It is released under the MIT License.",
   homepage = "https://github.com/guicaulada/lua-bintrees",
   license = "MIT/X11"
}
build = {
   type = "builtin",
   modules = {
      ["bintrees"] = "init.lua",
      ["bintrees.bintree"] = "lib/bintree.lua",
      ["bintrees.iterator"] = "lib/iterator.lua",
      ["bintrees.node"] = "lib/node.lua",
      ["bintrees.rbtree"] = "lib/rbtree.lua",
      ["bintrees.treebase"] = "lib/treebase.lua"
   }
}
