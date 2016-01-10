package = 'crescent'
version = '0.1.1-1'

description = {
  summary = 'a command-line program for moonscript - with pretty colors!',
  detailed = [[
    crescent is a command-line utility that can be used to run and compile moonscript files, along with a few other extra goodies
  ]],
  license = 'MIT/X11',
  homepage = 'https://github.com/Kingdaro/crescent',
}

dependencies = {
  'lua >= 5.1',
  'lua-term >= 0.3',
  'inspect >= 3.0',
  'luafilesystem >= 1.6.3',
  'luasocket 3.0rc1-2',
  'moonscript >= 0.4',
}

source = {
  url = 'git://github.com/Kingdaro/crescent.git',
  tag = 'v0.1.1',
}

build = {
  type = 'builtin',
  modules = {
    crescent = 'crescent/init.lua',
  },
  install = {
    bin = { 'bin/crescent' },
  },
}
