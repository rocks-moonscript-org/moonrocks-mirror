package = "liba"
version = "0.1.3-1"
source = {
   url = "git+https://github.com/tqfx/liba"
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
      CMAKE_INSTALL_PREFIX="$(PREFIX)",
      LUA_INCLUDE_DIR="$(LUA_INCDIR)",
      LIBA_INSTALL="lua",
      LIBA_LUA=1,
      LIBA_CXX=0
   },
   copy_directories = {}
}
