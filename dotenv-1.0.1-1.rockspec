package = 'dotenv'
version = '1.0.1-1'
source = {
  url = 'https://raw.githubusercontent.com/UrNightmaree/dotenv-lua/main/tarball/dotenv-1.0.1.tar.gz'
}
description = {
  summary = 'A .env parser for Lua',
  detailed = [[
A .env parser for Lua

Compatible with any Lua version, including LuaJIT!
Usage of this module can be found in Homepage of this module]],
  homepage = 'https://github.com/UrNightmaree/dotenv-lua',
  license = 'MIT'
}
dependencies = {
  'lua >= 5.1'
}
build = {
  type = 'builtin',
  modules = {
    ['dotenv'] = 'dotenv.lua'
  }
}
