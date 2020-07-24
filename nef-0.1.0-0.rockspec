package = "nef"
version = "0.1.0-0"
source = {
  url = "git+ssh://git@gitlab.com:labv3d/lua-nef.git" ,
  tag = "v0.1"
}
description = {
  summary = "CSG with Nef polyhedron and polygon, based on CGAL.",
  detailed = "CSG nef3 and nef2 from CGAL, with boolean operations and export to STL.",
  homepage = "https://gitlab.com/labv3d/lua-nef",
  license = "GPLV2"
}
dependencies = {
   "lua == 5.3",
}
build = {
  type = "cmake",
  variables = {
    BUILD_SHARED_LIBS = "ON",
    CMAKE_INSTALL_PREFIX = "$(PREFIX)",
    LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
    LUA_NEF_VERSION = version
  }
}
