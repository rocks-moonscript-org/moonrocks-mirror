package = 'seawolf'
version = '1.0-4'
source = {
  url = 'git://github.com/ophal/seawolf.git',
  tag = 'v1.0-4',
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
  'luasocket = 3.0rc1-2',
  'luafilesystem',
  'md5 = 1.2-1',
  'lsha2',
  'luuid = 20120501-1',
  'lrandom = 20120430.51-1',
}
build = {
  type = 'builtin',
  modules = {
    ['seawolf'] = 'init.lua',
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
  },
}

