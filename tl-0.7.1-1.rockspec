rockspec_format = "3.0"
package = "tl"
version = "0.7.1-1"
source = {
   url = "git://github.com/teal-language/tl",
   tag = "v0.7.1"
}
description = {
   summary = "Teal, a typed dialect of Lua",
   homepage = "https://github.com/teal-language/tl"
}
dependencies = {
   "compat53",
   "argparse"
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
