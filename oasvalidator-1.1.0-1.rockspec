package = "oasvalidator"
version = "1.1.0-1"
local v = version:gsub("%-%d", "")
source = {
  url = "git://github.com/nawaz1991/lua-oasvalidator",
  tag = "v"..v
}
rockspec_format = "3.0"

description = {
  summary = "LUA module to validate HTTP requests against OpenAPI.",
  detailed = "A FAST LUA module to validate the HTTP requests against the OpenAPI specifications of the REST server. It is based on cpp-oasvalidator",
  homepage = "https://nawaz1991.github.io/lua-oasvalidator",
  license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
  type = "cmake",
  variables = {
    BUILD_SHARED_LIBS = "ON",
    CMAKE_INSTALL_PREFIX = "$(PREFIX)",
    LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
    LUA_OASVALIDATOR_VERSION = v
  },
  platforms = { windows = { variables = {
    LUA_LIBRARIES = "$(LUA_LIBDIR)/$(LUALIB)"
  }}},
  documentation = {
    files = {
      "README.md",
      "API.md"
    }
  }
}
