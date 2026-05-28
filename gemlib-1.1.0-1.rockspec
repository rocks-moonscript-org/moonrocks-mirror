package = "gemlib"
version = "1.1.0-1"
rockspec_format = "3.0"
source = {
   url = "git+https://codeberg.org/bcasiello/gemlib.git",
   tag = "1.1.0"
}
description = {
   summary = "Gemini protocol library for Lua",
   detailed = "Lua module to read gemini: files in their entirety or iterated by lines",
   homepage = "https://codeberg.org/bcasiello/gemlib",
   license = "MIT",
   issues_url = "https://codeberg.org/bcasiello/gemlib/issues",
   maintainer = "Brian Casiello <bcasiello@duck.com>"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "luasocket >= 3.1.0",
   "luasec >= 1.3.2"
}
build = {
   type = "builtin",
   install = {
      lua = {"gemlib.tl"}
   },
   modules = {
      gemlib = "gemlib.lua",
   }
}
