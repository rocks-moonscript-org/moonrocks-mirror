package = 'landlord'
version = '0.1.0-1'

local v = version:gsub('%-%d', '')

source = {
  url = 'git://github.com/reasonMix/FightTheLandlord.git',
  tag = 'v'..v
}
description={
   summary = 'Lua binding for fight the landlord.',
   detailed = 'Lua binding for fight the landlord.',
   homepage = 'https://github.com/reasonMix/FightTheLandlord',
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
