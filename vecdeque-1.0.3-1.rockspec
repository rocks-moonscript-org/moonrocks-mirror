rockspec_format = "3.0"
package = "vecdeque"
version = "1.0.3-1"
source = {
   url = "git+https://codeberg.org/kwrjnthe/lua-vecdeque",
   tag = "1.0.3"
}
description = {
   summary = "dynamic-array deque",

   detailed = [[double-ended queue implemented as a geometrically-growing resizable array with an offset.]],

   labels = { "datastructure" },

   homepage = "https://codeberg.org/kwrjnthe/lua-vecdeque",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      vecdeque = "vecdeque.c"
   },
}
