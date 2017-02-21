package = "netfoxpack"
version = "0.1.3-1"

source = {
  url = "git://github.com/reasonMix/netfoxpack.git",
  tag = "v0.1.3"
}
description={
   summary = 'the netfox package the data',
   detailed = 'the netfox package the data',
   homepage = "https://github.com/reasonMix/netfoxpack",
   license = "The MIT License"
}
dependencies = { "lua >= 5.1" }
build = {
  type = 'cmake',
  platforms = {
     windows = {
        variables = {
           LUA_LIBRARIES = '$(LUA_LIBDIR)/$(LUALIB)'
        }
     }
  },
  variables = {
    BUILD_SHARED_LIBS = 'ON',
    CMAKE_INSTALL_PREFIX = '$(PREFIX)',
    LUA_INCLUDE_DIR = '$(LUA_INCDIR)',
  }
}
