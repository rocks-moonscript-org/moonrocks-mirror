local v = '1.1'

package = 'ansicolorsx'
version = v..'-1'

source = {
  url = 'https://raw.githubusercontent.com/UrNightmaree/ansicolorsx.lua/master/ansicolorsx.tar.gz',
  dir = 'ansicolorsx-'..v
}

description = {
  summary = 'Extended version of ansicolors.lua with latest ANSI color codes',
  detailed = [[
Extended version of ansicolors.lua with latest ANSI color codes.

Usage and attributes can be found in the homepage
]],
  homepage = 'https://github.com/UrNightmaree/ansicolorsx.lua',
  license = 'MIT'
}

dependencies = {
  'lua >= 5.1'
}

build = {
  type = 'builtin',
  modules = {
    ['ansicolorsx'] = 'ansicolorsx.lua'
  }
}
