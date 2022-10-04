package = "bintrees"
version = "1.0-1"
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
      bintree = "lib/bintree.lua",
      iterator = "lib/iterator.lua",
      node = "lib/node.lua",
      rbtree = "lib/rbtree.lua",
      treebase = "lib/treebase.lua"
   }
}
