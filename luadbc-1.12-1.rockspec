rockspec_format = '3.0'
package = 'luadbc'
version = '1.12-1'
source = {
  url = 'git+https://github.com/lua-wow-tools/luadbc.git',
}
description = {
  summary = 'Parser for WoW\'s DB2 files implemented in Lua',
  detailed = [[
    The source code of this module is copyrighted by the folks at
    townlong-yak.com, with all rights reserved. This module is provided
    as a convenience, with permission of the author.
  ]],
  homepage = 'https://www.townlong-yak.com/casc/dbc',
  license = 'All Rights Reserved',
  maintainer = 'ferronn@ferronn.dev',
}
dependencies = {
  'lua >= 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['dbc'] = 'dbc/init.lua',
    ['dbc.bin'] = 'dbc/bin.lua',
  },
}
