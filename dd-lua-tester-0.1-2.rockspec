package = 'dd-lua-tester'
version = '0.1-2'
source = {
  url = "git://github.com/codeofnode/dd-lua-tester",
  branch = "master"
}
description = {
  summary = 'Data driven lua tester',
  detailed = [[
    Data driven lua tester
  ]],
  homepage = 'http://github.com/codeofnode/dd-lua-tester',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lpeg = 1.0.2',
  'lustache = 1.3.1',
  'lua_cliargs = 3.0',
  'penlight >= 1.3.2',
  'busted = 2.0.0',
  'json4lua = 0.9.30'
}
build = {
  type = 'builtin',
  modules = {
    ['jsonpath']                              = 'jsonpath.lua',
    ['ddlt.core']                             = 'ddlt/core.lua',
    ['ddlt.initcli']                          = 'ddlt/initcli.lua',
    ['ddlt.runner']                           = 'ddlt/runner.lua',
    ['ddlt.modules.cli']                      = 'ddlt/modules/cli.lua',
    ['ddlt.tests.test']                       = 'ddlt/tests/test.lua',
  },
  install = {
    bin = {
      ['ddlt'] = 'bin/cli'
    }
  }
}
