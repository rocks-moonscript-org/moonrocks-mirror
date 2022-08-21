package = 'rawterm53'
version = '1.0-1'

source = {
  url = 'git://github.com/UrNightmaree/rawterm53',
  tag = 'v1.0.0'
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
  'cffi >= 0.2.1'
}

build = {
  type = 'builtin',
  modules = {
    ['rawterm53'] = 'rawterm53.lua'
  }
}
