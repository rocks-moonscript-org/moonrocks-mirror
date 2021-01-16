package = "vectorize"
version = "1.1.0-1"
source = {
   url = "git://github.com/wqferr/lua-vectorize.git",
   tag = "1.1.0"
}
description = {
   summary = "Simple and naïve vectorization for Lua.",
   detailed = [[
Vectorized routines akin to numpy's array. Currently only supports 1D arrays, with element-wise operators and common functions such as exp, sin, project, and friends.
Aims to be a replacement for NumLua for newer versions of Lua (since the last commit on that project was 10 years ago), but this is still a very young project.
Contributions are welcome!]],
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
      },
      ["vectorize.ode"] = "ode.lua"
   }
}
