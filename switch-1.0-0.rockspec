package = 'switch'
version = '1.0-0'
source = {
  url = 'https://github.com/ryanplusplus/switch.lua/archive/v1.0-0.tar.gz',
  dir = 'switch.lua-1.0-0/src'
}
description = {
  summary = 'Lua implementation of a switch statement.',
  homepage = 'https://github.com/ryanplusplus/switch.lua/',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.1'
}
build = {
  type = 'builtin',
  modules = {
    ['switch'] = 'switch.lua'
  }
}
