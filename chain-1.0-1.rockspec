package = 'chain'
version = '1.0-1'
source = {
  url = 'https://github.com/ryanplusplus/chain.lua/archive/v1.0-1.tar.gz',
  dir = 'chain.lua-1.0-1/src'
}
description = {
  summary = ' Library for easily building chained calls in Lua.',
  homepage = 'https://github.com/ryanplusplus/chain.lua/',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.2'
}
build = {
  type = 'builtin',
  modules = {
    ['chain'] = 'chain.lua'
  }
}
