package = "tstrict"
version = "0.3.1-1"
source = {
   url = "git://git.pipapo.org/tstrict",
   tag = "v0.3.1"
}
description = {
   summary = "Yet Another Implementation For Lua Strict Tables",
   detailed = [[
A strictness checker for Lua. Variables must be initialized before being used. Allows different types of defintions:
     'var' :: generic variables
     'const' :: constant values
     'typed' :: variables with defined type
     'constrain' :: variables with an invariant function
Can be disabled (on tested code) for performance improvement.]],
   homepage = "http://git.pipapo.org/?p=tstrict;a=summary",
   license = "GNU GPL v2",
   maintainer = "Christian Thäter <ct.tstrict@pipapo.org>"
}
dependencies = {
   "lua >= 5.2"
}
build = {
   type = "builtin",
   modules = {
      tstrict = "tstrict.lua"
   }
}
