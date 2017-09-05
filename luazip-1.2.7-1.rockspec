package = "LuaZip"
version = "1.2.7-1"
source = {
   url = "git+https://github.com/mpeterv/luazip",
   tag = "1.2.7"
}
description = {
   summary = "Library for reading files inside zip files",
   detailed = [[
LuaZip is a lightweight Lua extension library used to read files
stored inside zip files. The API is very similar to the standard
Lua I/O library API.
   ]],
   homepage = "https://github.com/mpeterv/luazip",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
external_dependencies = {
   ZZIP = {
      header = "zzip.h"
   }
}
build = {
   type = "builtin",
   modules = {
      zip = {
         incdirs = {
            "$(ZZIP_INCDIR)"
         },
         libdirs = {
            "$(ZZIP_LIBDIR)"
         },
         libraries = {
            "zzip"
         },
         sources = "src/luazip.c"
      }
   }
}
