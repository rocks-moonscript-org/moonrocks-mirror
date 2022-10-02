rockspec_format = '3.0'
package = 'lualua'
version = 'scm-0'
description = {
  summary = 'Lua bindings for the C Lua API',
  license = 'MIT',
  homepage = 'https://github.com/lua-wow-tools/lualua',
  issues_url = 'https://github.com/lua-wow-tools/lualua/issues',
  maintainer = 'ferronn@ferronn.dev',
}
source = {
  url = 'git+https://github.com/lua-wow-tools/lualua.git',
}
dependencies = {
  'lua = 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['lualua'] = 'lualua.c',
  },
}
