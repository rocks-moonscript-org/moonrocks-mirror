package = 'gauge'
version = '1.0.1-1'
source = {
  url = 'git+https://github.com/achengli/gauge.git'
}
description = {
  detailed = [[
  Pure lua port of "demo" and "test" functions from GNU Octave.
  ]],
  homepage = 'https://github.com/achengli/gauge',
  license = 'GPLv3',
}
dependencies = {
}
build = {
  type = 'builtin',
  modules = {
    gauge = 'src/gauge.lua',
  }
}
