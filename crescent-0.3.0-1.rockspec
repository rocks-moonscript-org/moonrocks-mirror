package = 'crescent'
version = '0.3.0-1'
description = {
  summary = 'a command-line program for moonscript - with pretty colors!',
  detailed = [[    crescent is a command-line utility that can be used to run and compile moonscript files, along with a few other extra goodies
    more info on github - https://github.com/Kingdaro/crescent
  ]],
  license = 'MIT/X11',
  homepage = 'https://github.com/Kingdaro/crescent'
}
dependencies = {
  'lua >= 5.1',
  'lua-term >= 0.3',
  'inspect >= 3.0',
  'luafilesystem >= 1.6.3',
  'luasocket 3.0rc1-2',
  'moonscript >= 0.4'
}
source = {
  url = 'git://github.com/Kingdaro/crescent.git',
  tag = 'v0.3.0'
}
build = {
  type = 'builtin',
  modules = {
    crescent = 'crescent/init.lua',
    ['crescent.cli'] = 'crescent/cli.lua',
    ['crescent.compile'] = 'crescent/compile.lua',
    ['crescent.help'] = 'crescent/help.lua',
    ['crescent.log'] = 'crescent/log.lua',
    ['crescent.meta'] = 'crescent/meta.lua',
    ['crescent.moonify'] = 'crescent/moonify.lua',
    ['crescent.run'] = 'crescent/run.lua',
    ['crescent.util'] = 'crescent/util.lua',
    ['crescent.watch'] = 'crescent/watch.lua'
  },
  install = {
    bin = {
      'bin/crescent'
    }
  }
}