package = "lua-nowplaying"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/Khronos31/lua-nowplaying",
   tag = "v0.0.1"
}
description = {
   homepage = "https://github.com/Khronos31/lua-nowplaying",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
      nowplaying = {
         sources = "nowplaying.c",
         libraries = "nowplaying"
      }
   }
}
