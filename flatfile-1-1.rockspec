package = "flatfile"
version = "1-1"
source = {
   url = "git://github.com/ptbrown/flatfile-lua",
   tag = "r1"
}
description = {
   summary = "Flat file table reader/writer",
   detailed = "This module reads and writes tables as files with fixed-width records.",
   homepage = "https://github.com/ptbrown/flatfile-lua",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      flatfile = "src/flatfile.lua"
   }
}
