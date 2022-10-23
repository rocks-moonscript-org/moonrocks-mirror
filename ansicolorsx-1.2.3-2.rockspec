local v = '1.2.3'

package = 'ansicolorsx'
version = v..'-2'

source = {
  url = 'https://github.com/UrNightmaree/ansicolorsx.lua/archive/v'..v..'-2.tar.gz',
  dir = 'ansicolorsx.lua-'..v..'-2'
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
