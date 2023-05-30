package = "binarytree"
version = "0.0.1-0"
source = {
   url = "git+https://github.com/Blequi/binarytree.git"
}
description = {
   summary = "Binary Tree data structure written in pure Lua",
   detailed = [=[
In computer science, (sorted) binary tree is
a data structure meant to achieve quick lookup,
insertion and removal of elements.
In order to do so, elements stay sorted
according to a certain comparison function.
   ]=],
   homepage = "https://github.com/Blequi/binarytree",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      binarytree = "binarytree.lua"
   }
}
