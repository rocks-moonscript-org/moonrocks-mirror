rockspec_format = "3.0"
package = "luatoteal"
version = "1.0-1"
source = {
   url = "git://github.com/teal-language/cyan",
}
description = {
   summary = "Teal Build With Dependencies (s)",
   detailed = "Teal Build With Dependencies (d)",
   homepage = "https://github.com/V1K1NGbg/lua-to-teal-conversion",
   license = "MIT",
   issues_url = "https://github.com/V1K1NGbg/lua-to-teal-conversion/issues",
}
dependencies = {
   "tl",
}
build = {
   type = "builtin",
   modules = {
      ["luatoteal.a"] = "build/luatoteal/a.lua",
      ["luatoteal.b"] = "build/luatoteal/b.lua"
   },
   install = {
      lua = {
         ["luatoteal.a"] = "src/luatoteal/a.tl",
         ["luatoteal.b"] = "src/luatoteal/b.tl"
      },
      bin = {
         "bin/luatoteal",
      }
   }
}
