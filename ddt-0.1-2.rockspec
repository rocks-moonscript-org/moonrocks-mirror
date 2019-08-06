package = 'ddt'
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
    ['ddt.core']                             = 'ddt/core.lua',
    ['ddt.initcli']                          = 'ddt/initcli.lua',
    ['ddt.runner']                           = 'ddt/runner.lua',
    ['ddt.modules.cli']                      = 'ddt/modules/cli.lua',
    ['ddt.tests.test']                       = 'ddt/tests/test.lua',
  },
  install = {
    bin = {
      ['ddt'] = 'bin/cli'
    }
  }
}
