package = "moonxml"
version = "3.4.0-1"
source = {
   url = "git://github.com/DarkWiiPlayer/moonxml.git",
   tag = "v3.4.0"
}
description = {
   homepage = "https://github.com/DarkWiiPlayer/moonxml",
   license = "Unlicense"
}
dependencies = {
   "lua >= 5.1",
   "xhmoon ~> 2.1",
   "strbuffer"
}
build = {
   type = "builtin",
   modules = {
      moonxml = "moonxml.lua"
   },
   install = {
      bin = {
         "bin/moonxml"
      }
   }
}
