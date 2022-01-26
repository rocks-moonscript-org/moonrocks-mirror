rockspec_format = '3.0'
package = 'luadbd'
version = '0.3.2-0'
description = {
  summary = 'WoWDBDefs parser',
  license = 'MIT',
  homepage = 'https://github.com/lua-wow-tools/luadbd',
  issues_url = 'https://github.com/lua-wow-tools/luadbd/issues',
  maintainer = 'ferronn@ferronn.dev',
  labels = {'wow'},
}
source = {
  url = 'https://github.com/lua-wow-tools/luadbd/archive/refs/tags/v0.3.2.tar.gz',
  dir = 'luadbd-0.3.2',
}
dependencies = {
  'datafile',
  'inspect',
  'lpeg',
  'luadbc',
  'luafilesystem',
  'luasec',
  'lua-zip',
}
build = {
  type = 'builtin',
  modules = {
    ['luadbd'] = 'luadbd.lua',
    ['luadbd.build'] = 'luadbd/build.lua',
    ['luadbd.cache'] = 'luadbd/cache.lua',
    ['luadbd.dbcwrap'] = 'luadbd/dbcwrap.lua',
    ['luadbd.dbds'] = 'luadbd/dbds.lua',
    ['luadbd.parser'] = 'luadbd/parser.lua',
    ['luadbd.sig'] = 'luadbd/sig.lua',
  },
}
