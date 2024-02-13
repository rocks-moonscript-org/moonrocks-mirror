package = "liba"
version = "0.1.4-2"
source = {
   url = "https://github.com/tqfx/liba/archive/87607ce69bb41986c398fee56323021f8ad6b0c4.tar.gz",
   file = "liba-87607ce69bb41986c398fee56323021f8ad6b0c4.tar.gz"
}
description = {
   summary = "An algorithm library based on C/C++ language",
   homepage = "https://github.com/tqfx/liba",
   maintainer = "tqfx <tqfx@tqfx.org>",
   license = "MPL-2.0"
}
build = {
   type = "cmake",
   variables = {
      BUILD_TESTING=0,
      CMAKE_BUILD_TYPE="Release",
      CMAKE_INSTALL_PREFIX="$(PREFIX)",
      LUA_INCLUDE_DIR="$(LUA_INCDIR)",
      LIBA_INSTALL="lua",
      LIBA_LUA=1,
      LIBA_IPO=1,
      LIBA_CXX=0
   },
   copy_directories = {}
}
