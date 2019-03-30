package = "lua-rbtree"
version = "0.0.1-1"

source = {
   url = "git://github.com/sjnam/lua-rbtree",
   tag = "v0.0.1"
}

description = {
   summary = "Implementation of red-black tree in lua",
   license = "Public Domain",
   homepage = "https://github.com/sjnam/lua-rbtree",
   maintainer = "Soojin Nam <jsunam@gmail.com>"
}

build = {
   type = "builtin",
   modules = {
      ["rbtree"] = "rbtree.lua"
   }
}
