rockspec_format = '3.0'
package = 'fallo'
version = '2.2.0-1'

description = {
  summary = 'Modern error handling for Lua',
  homepage = 'https://codeberg.org/amartin/fallo',
  license = 'LGPL-3.0'
}

source = {
  url = 'https://codeberg.org/amartin/fallo/archive/v2.2.0.zip',
  dir = 'fallo'
}

dependencies = { 'lua >= 5.1', 'lua-cjson >= 2.1.0' }

test_dependencies = { 'busted >= 2.2' }

build = {
  type = 'builtin',
  copy_directories = {}
}

