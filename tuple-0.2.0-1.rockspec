package = "tuple"
version = "0.2.0-1"
source = {
   url = "https://github.com/Yonaba/tuple.lua/archive/tuple.lua-0.2.0-1.tar.gz",
   dir = "tuple.lua-tuple.lua-0.2.0-1"
}
description = {
   summary = "a tuple class for Lua",
   detailed = [[tuple is a minimal implementation of *ordered n-tuples* in Lua.]],
   homepage = "http://yonaba.github.com/tuple.lua",
   license = "MIT <http://www.opensource.org/licenses/mit-license.php>"
}
dependencies = {
   "lua >= 5.1, <= 5.3"
}
build = {
  type = "builtin",
  modules = {
    ["tuple"] = "tuple.lua"
  },
  copy_directories = {"specs", "docs"}
}