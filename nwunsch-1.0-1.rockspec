package = "nwunsch"
version = "1.0-1"
source = {
   url = "git+https://github.com/0xnu/nwunsch_lua.git",
   tag = "v1.0.0"
}
description = {
   summary = "A Lua package for performing Needleman-Wunsch sequence alignment.",
   detailed = [[
      nwunsch is a Lua package that implements the Needleman-Wunsch algorithm for performing
      global sequence alignment. It provides functions for aligning two sequences and
      generating the optimal alignment score and the aligned sequences.
   ]],
   homepage = "https://github.com/0xnu/nwunsch_lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      nwunsch = "nwunsch/init.lua"
   }
}