package = "bakalang"
version = "1.1.0-1"
source = {
   url = "git+https://github.com/Tomas3w/bakalang.git",
   tag = "v1.1",
}
description = {
   summary = "A basic libary for making baka preprocessors",
   detailed = [[
   A library to make baka preprocessors, this preprocessors can change the source code (or any other text file, or even strings) using macros defined in the Lua programming language.
   See wiki (in the repository) for more details.
   ]],
   homepage = "https://github.com/Tomas3w/bakalang",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      bakalang = "src/bakalang.lua",
   }
}
