package = "ocsg"
version = "0.1.0-0"
source = {
  url = "git+ssh://git@gitlab.com:labv3d/lua-ocsg.git" ,
  tag = "v0.1"
}
description = {
  summary = "OpenCSG bindings for dispaying constructive solid geometry (CSG) models efficiently.",
  detailed = "Draw primitives directly with CSG ops (intersection, union, difference) using OpenCSG, and OpenGL/GLEW/GLFW3.",
  homepage = "https://gitlab.com/labv3d/lua-ocsg",
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
    LUA_OCSG_VERSION = version
  }
}
