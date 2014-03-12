package = "lua-inih"
version = "0.1-1"
source = {
   url = "git://github.com/agladysh/lua-inih.git",
   branch = "v0.1"
}
description = {
   summary = "Bindings for inih, simple .INI file parser",
   homepage = "http://github.com/agladysh/lua-inih",
   license = "MIT/X11",
   maintainer = "Alexander Gladysh <agladysh@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      inih = {
         sources = {
            "src/lua-inih.c",
            "lib/inih/ini.c"
         },
         incdirs = {
            "src/",
            "lib/inih/"
         }
      }
   }
}
