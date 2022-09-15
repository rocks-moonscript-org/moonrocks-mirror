package = 'rawterm53'
version = '1.1-1'

source = {
  url = 'https://raw.githubusercontent.com/UrNightmaree/rawterm53/master/tarball/rawterm53-1.1-1.tar.gz',
}

description = {
  summary = 'A rawterm support for Lua 5.3+',
  detailed = [[
    A rawterm support for Lua 5.3'
  ]],
  homepage = 'https://github.com/UrNightmaree/rawterm53',
  license = 'MIT'
}

dependencies = {
  'lua >= 5.3',
  'cffi-lua >= 0.2.1'
}

build = {
  type = 'builtin',
  modules = {
    ['rawterm53'] = 'rawterm53.lua'
  }
}
