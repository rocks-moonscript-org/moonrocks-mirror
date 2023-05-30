package = 'benchy'
version = '1.0-0'
source = {
  url = 'https://github.com/ryanplusplus/benchy.lua/archive/v1.0-0.tar.gz',
  dir = 'benchy.lua-1.0-0/src'
}
description = {
  summary = 'Quick and dirty benchmarking.',
  homepage = 'https://github.com/ryanplusplus/benchy.lua/',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.2'
}
build = {
  type = 'builtin',
  modules = {
    ['benchy'] = 'benchy.lua'
  }
}
