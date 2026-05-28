package = "LuaBitOp"
version = "1.0.3-1"

source = {
  url = "https://bitop.luajit.org/download/LuaBitOp-1.0.3.tar.gz",
}

description = {
   summary = "Lua Bit Operations Module",
   detailed = [[
Lua BitOp is a C extension module for Lua 5.1 which adds bitwise operations on numbers. 
Lua BitOp is Copyright © 2008 Mike Pall. Lua BitOp is free software, released under the MIT/X license (same license as the Lua core).
]],
   homepage = "http://bitop.luajit.org/",
   license = "MIT/X license"
}
dependencies = {
   "lua >= 5.1, < 5.6"
}
build = {
   type = "builtin",
   modules = {
      bit = {
         sources = {
            "bit.c"
         }
      }
   }
}
