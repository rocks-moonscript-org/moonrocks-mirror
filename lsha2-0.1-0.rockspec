package = 'lsha2'
version = '0.1-0'
source = {
  url = 'git://github.com/develCuy/lsha2.git',
  tag = 'master',
}
description = {
  summary = 'Implementation of secure hash functions SHA224/SHA256 in Lua 5.1/5.2 - HEAD.',
  detailed = 'Current development branch.',
  homepage = 'https://github.com/develCuy/lsha2',
  license = 'GPL-3',
  maintainer = 'Fernando Paredes Garcia <fernando@develcuy.com>',
}
dependencies = {
  'lua >= 5.1',
  'bit32',
}
build = {
  type = 'builtin',
  modules = {
    ['lsha2'] = 'lsha2.lua',
  },
}
