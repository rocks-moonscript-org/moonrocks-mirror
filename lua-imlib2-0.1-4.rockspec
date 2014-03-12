package = "lua-imlib2"
version = "0.1-4"
source = {
   url = "http://luaforge.net/frs/download.php/3042/lua-imlib2-0.1.tar.gz",
   md5 = "f90d5d70ea8af6b66ee2e3071a08ec00"
}
description = {
   summary = "A binding to the imlib2 image manipulation library",
   homepage = "http://asbradbury.org/projects/lua-imlib2/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   IMLIB2 = {
      header = "Imlib2.h"
   }
}
build = {
   type = "builtin",
      modules = {
      limlib2 = {
         sources = {"limlib2.c"},
         libraries = {"Imlib2"},
         incdirs = {"$(IMLIB2_INCDIR)"},
         libdirs = {"$(IMLIB2_LIBDIR)"}
      },
      imlib2 = "imlib2.lua"
   }
}
