package = "LuaBitOp"
version = "1.0.2-2"
source = {
   url = "http://bitop.luajit.org/download/LuaBitOp-1.0.2.tar.gz",
   md5 = "d0c1080fe0c844e8477279668e2d0d06"
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
   "lua >= 5.1, < 5.3"
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
