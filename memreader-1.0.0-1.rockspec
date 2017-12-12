package = "memreader"
version = "1.0.0-1"
source = {
   url = "git://github.com/squeek502/memreader",
   tag = "v" .. version,
}
description = {
   detailed = "Lua module for reading the memory of Windows processes",
   homepage = "https://github.com/squeek502/memreader",
   license = "Unlicense"
}
supported_platforms = {
  "windows"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "cmake",
   variables = {
     CMAKE_C_FLAGS="$(CFLAGS)",
     CMAKE_MODULE_LINKER_FLAGS="$(LIBFLAG)",
     LUA="$(LUA)",
     LIBDIR="$(LIBDIR)",
   },
}
