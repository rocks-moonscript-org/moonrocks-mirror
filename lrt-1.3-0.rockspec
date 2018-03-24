package = 'lrt'
version = '1.3-0'
source = {
  url = 'https://github.com/ryanplusplus/lrt/archive/v1.3-0.tar.gz',
  dir = 'lrt-1.3-0'
}
description = {
  detailed = 'Script for easily working with Luarocks trees. Allows you to configure Lua projects to only reference project-local dependencies in order to isolate them from system-wide dependencies.',
  homepage = 'https://github.com/ryanplusplus/lrt',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {}
build = {
  type = 'builtin',
  modules = {},
  install = {
    bin = {
      ['lrt'] = 'lrt'
    }
  }
}
