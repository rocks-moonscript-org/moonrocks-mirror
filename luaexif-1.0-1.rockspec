package = "luaexif"
version = "1.0-1"
source = {
   url = "git://github.com/minoki/luaexif",
   tag = "v1.0"
}
description = {
   summary = "Lua binding for libexif",
   detailed = [[
This is a Lua binding for libexif (http://libexif.github.io/).]],
   homepage = "https://github.com/minoki/luaexif",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
external_dependencies = {
   LIBEXIF = {
      header = "libexif/exif-data.h"
   }
}
build = {
   type = "builtin",
   modules = {
      exif = {
         sources = "lexif.c",
         libraries = {"exif"},
         incdirs = {"$(LIBEXIF_INCDIR)"},
         libdirs = {"$(LIBEXIF_LIBDIR)"}
      }
   }
}
