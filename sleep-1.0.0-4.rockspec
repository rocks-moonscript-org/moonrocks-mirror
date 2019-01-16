package = "sleep"
version = "1.0.0-4"
source = {
   url = "git://github.com/squeek502/sleep",
   tag = "v" .. version,
}
description = {
   summary = "Millisecond-precision sleep function",
   detailed = "Bare-bones Lua module that exposes a millisecond-precision sleep function",
   homepage = "https://github.com/squeek502/sleep",
   license = "Unlicense"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      sleep = "sleep.c"
   },
}
