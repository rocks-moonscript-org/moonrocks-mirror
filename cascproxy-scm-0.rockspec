rockspec_format = '3.0'
package = 'cascproxy'
version = 'scm-0'
description = {
  summary = 'Simplified HTTP interface to CASC',
  license = 'MIT',
  homepage = 'https://github.com/lua-wow-tools/cascproxy',
  issues_url = 'https://github.com/lua-wow-tools/cascproxy/issues',
  maintainer = 'ferronn@ferronn.dev',
  labels = { 'wow' },
}
source = {
  url = 'git+https://github.com/lua-wow-tools/cascproxy.git',
}
dependencies = {
  'lua = 5.1',
  'argparse',
  'http',
  'lpeg',
  'luacasc',
  'luafilesystem',
}
build = {
  type = 'none',
  install = {
    bin = {
      cascproxy = 'cascproxy.lua',
    },
  },
}
