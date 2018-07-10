rockspec_format = '1.0'
package = 'lua-resty-rollbar'
version = '0.1.0-2'

source = {
   url = 'git+https://github.com/Scalingo/lua-resty-rollbar',
   tag = '0.1.0',
}

description = {
  summary = 'Simple module to send errors to Rollbar.',
  detailed = [[
    Simple module to send errors to Rollbar with stacktraces. Errors are sent to Rollbar
    asynchronously in a light thread.
  ]],
  homepage = 'https://github.com/Scalingo/lua-resty-rollbar',
  license = 'GPL',
  maintainer = 'Scalingo Team <tech@scalingo.com>',
  -- When Rockspec format 3.0 is out
  -- issues_url = 'https://github.com/Scalingo/lua-resty-rollbar/issues',
  -- labels = {'openresty', 'rollbar'},
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
