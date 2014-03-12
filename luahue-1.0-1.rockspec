package = 'luahue'
version = '1.0-1'
source = {
  url = 'git://github.com/pkazmier/luahue.git',
  tag = 'v1.0'
}
description = {
  summary  = 'A Lua library and tools to control Philips Hue light bulbs.',
  detailed = [[
The library is a loose wrapper around the REST API provided by
Philips. In addition, two command line utilities are included to
demonstrate the use of the API. The first, `huectl`, is a generic tool
that let's you control the various properties such as on/off, color,
and brightness. The second utility, `huebwmon`, changes the colors of
lights based on network utilization.
              ]],
  homepage = 'http://github.com/pkazmier/luahue',
  license  = 'MIT',
}
dependencies = {
  'lua >= 5.1',
  'penlight',
  'luasocket',
  'luajson',
}
build = {
  type = 'builtin',
  modules = {
    hue = 'src/hue.lua',
  },
  install = {
    bin = { 
      'bin/huectl',
      'bin/huebwmon',
    }
  }
}
