package = "lua-rbtree"
version = "0.0-1"
source = {
  url = "https://github.com/sjnam/lua-rbtree",
}
description = {
  summary = "Red Black Tree",
  homepage = "https://sjnam.github.io",
  maintainer = "Soojin Nam"
}
dependencies = {
    "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["rbtree"] = "lib/rbtree.lua",
  }
}

