package = "lutf8proc"
version = "0.1.0-1"
rockspec_format = "3.0" -- so that git submodule is initialized
source = {
   url = "git+https://github.com/erutuon/lutf8proc",
   tag = "v0.1.0"
}
description = {
   summary = "Lua bindings to the utf8proc library",
   detailed = [[
      Lua bindings to some of the functions from the utf8proc library,
      a simple library for handling UTF-8 encoded strings, used by the Julia language.
      Includes uppercasing and lowercasing, normalization and casefolding. See testcases for examples.
   ]],
   homepage = "https://github.com/erutuon/lutf8proc",
   license = "MIT"
}
dependencies = { "lua >= 5.1, <= 5.4" }
build = {
   type = "builtin",
   modules = {
      lutf8proc = {
         sources = { "lutf8proc.c", "utf8proc/utf8proc.c" },
         incdirs = { "utf8proc" }
      }
   }
}
