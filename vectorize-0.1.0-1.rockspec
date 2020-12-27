package = "vectorize"
version = "0.1.0-1"
source = {
   url = "git://github.com/wqferr/lua-vectorize.git",
   tag = "0.1.0"
}
description = {
   summary = "Simple and naïve vectorization for Lua.",
   detailed = [[
Vectorized routines akin to numpy's array. Currently only supports
1D arrays, with elementwise operators.
Aims to be a replacement for NumLua for newer versions of Lua, but
it's not there yet.]],
   homepage = "https://github.com/wqferr/lua-vectorize",
   license = "GPL-3.0"
}
dependencies = {
   "lua >= 5.3, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      vectorize = {
         libraries = {
            "m"
         },
         sources = {
            "vectorize.c"
         }
      }
   }
}
