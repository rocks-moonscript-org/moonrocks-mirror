package="lzlib"
version="0.3-2"
source = {
   url = "http://luaforge.net/frs/download.php/3059/lzlib-0.3.tar.gz",
   md5 = "4ed15c23b2dc80b10d2cabbf1ed88a99"
}
description = {
   summary = "Lua bindings to the ZLib compression library",
   detailed = [[
      This package provides a library to access zlib library functions
      and also to read/write gzip files using an interface similar
      to the base io package.
   ]],
   homepage = "http://luaforge.net/projects/lzlib/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   ZLIB = {
      header = "zlib.h",
      library = "z",
   }
}
build = {
   type = "builtin",
   modules = {
      zlib = {
         sources = "lzlib.c",
         libdirs = "$(ZLIB_LIBDIR)",
         incdirs = "$(ZLIB_INCDIR)",
      },
      gzip = {
         sources = "lgzip.c",
         libdirs = "$(ZLIB_LIBDIR)",
         incdirs = "$(ZLIB_INCDIR)",
         libraries = "z",
      },
   }
}
