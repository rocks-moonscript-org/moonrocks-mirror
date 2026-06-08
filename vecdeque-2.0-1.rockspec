rockspec_format = "3.0"
package = "vecdeque"
version = "2.0-1"
source = {
   url = "git+https://codeberg.org/kwrjnthe/lua-vecdeque",
   tag = "2.0"
}
description = {
   summary = "dynamic-array deque",

   detailed = [[double-ended queue implemented as a geometrically-growing resizable array.]],

   labels = { "datastructure" },

   homepage = "https://codeberg.org/kwrjnthe/lua-vecdeque",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3",
}
build = {
   type = "builtin",
   modules = {
      vecdeque = "vecdeque.c"
   },
}
