package = 'pomelo'
version = '0.1.0-1'

local v = version:gsub('%-%d', '')

source = {
  url = 'git://github.com/reasonMix/lua-pomelo.git',
  tag = 'v'..v
}
description={
   summary = 'Lua binding for libpomelo2.',
   detailed = [[
The libpomelo2[1] bindings for Lua 5.1/5.2/5.3 and LuaJIT.

libpomelo2 is a client library for NetEase's pomelo[2].
And the later is a fast, scalable, distributed game server framework for Node.js.

[1]: https://github.com/NetEase/libpomelo2
[2]: https://github.com/NetEase/pomelo
]],
   homepage = 'https://github.com/reasonMix/lua-pomelo',
   license = 'MIT'
}
dependencies = { 'lua >= 5.1' }
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
