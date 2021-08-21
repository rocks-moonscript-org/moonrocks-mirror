package = "lzlib"
version = "0.4.1.53-3"
source = {
   url = "git://github.com/hishamhm/lzlib.git",
   tag = "0.4.1.53"
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
      library = "z"
   },
   platforms = {
      windows = {
         ZLIB = {
            library = "zlib"
         }
      }
   }
}
build = {
   type = "builtin",
   modules = {
      gzip = "gzip.lua",
      zlib = {
         incdirs = "$(ZLIB_INCDIR)",
         libdirs = "$(ZLIB_LIBDIR)",
         libraries = "z",
         sources = "lzlib.c"
      }
   },
   platforms = {
      windows = {
         modules = {
            zlib = {
               libraries = "zlib"
            }
         }
      },
      mingw32 = {
         modules = {
            zlib = {
               libraries = "z"
            }
         }
      },
      msys2_mingw_w64 = {
         modules = {
            zlib = {
               libraries = "z"
            }
         }
      },
   }
}
