package = 'lua-resty-rollbar'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/Scalingo/lua-resty-rollbar',
   tag = '0.1.0',
}

description = {
  summary = 'Simple module to send errors to Rollbar.',
  detailed = [[
    Simple module to send errors to Rollbar.
  ]],
  homepage = 'https://github.com/Scalingo/lua-resty-rollbar',
  license = 'GPL',
}

dependencies = {
  'lua >= 5.1',
  'lua-resty-http',
  'lua-cjson',
}

build = {
  type = 'builtin',
  modules = {
    ['resty.rollbar'] = 'lib/resty/rollbar/client.lua',
  },
}
