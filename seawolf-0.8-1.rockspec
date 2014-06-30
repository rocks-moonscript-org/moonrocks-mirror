package = 'seawolf'
version = '0.8-1'
source = {
  url = 'git://github.com/ophal/seawolf.git',
  tag = 'v0.8-1',
}
description = {
  summary = 'Ophal toolkit library for back-end web development.',
  homepage = 'https://github.com/ophal/seawolf',
  license = 'GPL-3',
  maintainer = 'Fernando Paredes Garcia <fernando@develcuy.com>',
}
dependencies = {
  'lua = 5.1',
  'lpeg',
  'luasocket',
  'luafilesystem',
  'md5',
  'luuid',
}
build = {
  type = 'builtin',
  modules = {
    ['seawolf.behaviour'] = 'behaviour/init.lua',
    ['seawolf.calendar'] = 'calendar/init.lua',
    ['seawolf.contrib'] = 'contrib/init.lua',
    ['seawolf.database'] = 'database/init.lua',
    ['seawolf.fs'] = 'fs/init.lua',
    ['seawolf.maths'] = 'maths/init.lua',
    ['seawolf.other'] = 'other/init.lua',
    ['seawolf.text'] = 'text/init.lua',
    ['seawolf.text.preg'] = 'text/preg.lua',
    ['seawolf.variable'] = 'variable/init.lua',
    ['seawolf.variable.serialize'] = 'variable/serialize/init.lua',
  },
}