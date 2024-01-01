package = "gauge"
version = "1.1-1"

source = {
   url = "git+https://github.com/achengli/gauge",
}

description = {
  summary = 'Pure lua port of "demo" and "test" functions from GNU Octave',
  detailed = [[
  Gauge is a Lua library that aims to be the pure Lua port of demo and test 
  functions from GNU Octave. 
  ]],
  homepage = 'https://github.com/achengli/gauge',
  license = 'GPLv3',
}

dependencies = {}

build = {
  type = 'builtin',
  modules = {
    gauge = 'src/gauge.lua',
  },
  copy_directories = {
    'test',
  }
}
