rockspec_format = "3.0"
package = "tl"
version = "0.4.2-1"
source = {
   url = "git://github.com/teal-language/tl",
   tag = "v0.4.2"
}
description = {
   summary = "A typed dialect of Lua",
   homepage = "https://github.com/teal-language/tl"
}
dependencies = {
   "compat53"
}
build = {
   modules = {
      tl = "tl.lua"
   },
   install = {
      bin = {
         "tl"
      }
   }
}
