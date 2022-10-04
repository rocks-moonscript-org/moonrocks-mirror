package = "bintrees"
version = "1.1-3"
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
      ["bintrees.bintree"] = "bintrees/bintree.lua",
      ["bintrees.iterator"] = "bintrees/iterator.lua",
      ["bintrees.node"] = "bintrees/node.lua",
      ["bintrees.rbtree"] = "bintrees/rbtree.lua",
      ["bintrees.treebase"] = "bintrees/treebase.lua"
   }
}
