package = "varargs"
version = "0.1.3-1"
source = {
   url = "git://github.com/Lawful-Lazy/lua-varargs.git",
   tag = "v0.1.3"
}
description = {
   summary = "Friendly tuple manipulation",
   detailed = [[
Inspired by Haskell, I designed varargs to be a friendly
way to grab parts of "multiple argument" values.]],
   homepage = "https://github.com/Lawful-Lazy/lua-varargs",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      varargs = "src/varargs.lua"
   }
}
