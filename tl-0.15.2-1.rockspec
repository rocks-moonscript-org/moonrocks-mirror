rockspec_format = "3.0"
package = "tl"
version = "0.15.2-1"
source = {
   url = "git+https://github.com/teal-language/tl",
   tag = "v0.15.2"
}
description = {
   summary = "Teal, a typed dialect of Lua",
   homepage = "https://github.com/teal-language/tl",
   license = "MIT"
}
dependencies = {
   "compat53",
   "argparse",
   "luafilesystem"
}
build = {
   modules = {
      tl = "tl.lua"
   },
   install = {
      bin = {
         "tl"
      },
      lua = {
         "tl.tl"
      }
   }
}
test_dependencies = {
   "dkjson"
}
