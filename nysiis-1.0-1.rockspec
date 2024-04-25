package = "nysiis"
version = "1.0-1"
source = {
   url = "git+https://github.com/0xnu/nysiis_lua.git",
   tag = "v1.0.0"
}
description = {
   summary = "A Lua package for performing Needleman-Wunsch sequence alignment.",
   detailed = [[
      The nysiis package provides a Golang implementation of the New York State
      Identification and Intelligence System (NYSIIS) phonetic encoding algorithm.
      NYSIIS encodes names based on pronunciation, which is helpful in name-matching
      and searching applications.
   ]],
   homepage = "https://github.com/0xnu/nysiis_lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      nysiis = "nysiis/init.lua"
   }
}