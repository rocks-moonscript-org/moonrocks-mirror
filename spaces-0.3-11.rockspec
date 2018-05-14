package = "spaces"
version = "0.3-11"
source = {
   url = "git://github.com/tjizep/libspaces.git",
   tag = "v0.3.1"
}
description = {
   summary = "Lib(eration) spaces is a library and server for transactional graph and key value storage/persistence. ",
   detailed = "Lib(eration) spaces is a library and server for transactional graph and key value storage/persistence. ",
   homepage = "https://github.com/tjizep/libspaces",
   license = "LGPL 2.1"
}
dependencies = {}

build = {
   type = "cmake",
   variables={
     LUA="$(LUA)",
     LUA_INCDIR="$(LUA_INCDIR)",
     LUA_LIBDIR="$(LUA_LIBDIR)",
     INST_LIBDIR="$(LIBDIR)",
     CMAKE_BUILD_TYPE="Release",
     CMAKE_INSTALL_PREFIX=""
   }

}
