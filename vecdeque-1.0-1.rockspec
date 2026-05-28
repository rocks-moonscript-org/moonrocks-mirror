package = "vecdeque"
version = "1.0-1"
source = {
   url = "git+https://codeberg.org/kwrjnthe/lua-vecdeque",
   tag = "1.0"
}
description = {
   summary = "dynamic-array implementation of a double-ended queue in Lua",

   detailed = [[double-ended queue (deque); implemented as a
   dynamically growing array with an offset.]],

   homepage = "https://codeberg.org/kwrjnthe/lua-vecdeque",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3",
}
build = {
   type = "builtin",
   modules = {
      vecdeque = "vecdeque.lua"
   },
}
