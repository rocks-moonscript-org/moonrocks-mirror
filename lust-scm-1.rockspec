package = "Lust"
version = "scm-1"
source = {
   url = "git://github.com/weshoke/Lust"
}
description = {
   summary = "Lua String Templates",
   detailed = [[
      Lust is a templating system for Lua loosely based on Terrence Parr's
      StringTemplate. Lust has been designed to enable the simple expression
      of complex string synthesis problems. It is particularly well suited for
      generating strings from hierarchical data structures. Lust itself
      encompases a language for writing templates and an interpreter for
      applying the templates to a datastructure.
   ]],
   homepage = "https://github.com/weshoke/Lust",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.3",
   "lpeg",
}
build = {
   type = "builtin",
   modules = {
      Lust = "Lust.lua",
   }
}
