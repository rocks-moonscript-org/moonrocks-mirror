package = "sleep"
version = "1.0.0-3"
source = {
   url = "git://github.com/squeek502/sleep",
   tag = "v" .. version,
}
description = {
   summary = "Millisecond-precision sleep function",
   detailed = "Bare-bones Lua module that exposes a millisecond-precision sleep function",
   homepage = "https://github.com/squeek502/sleep",
   license = "Unlicense"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "cmake",
   variables = {
     CMAKE_C_FLAGS="$(CFLAGS)",
     CMAKE_MODULE_LINKER_FLAGS="$(LIBFLAG)",
     LUAROCKS_INSTALL_LIBDIR="$(LIBDIR)",
   },
}
