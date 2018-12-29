package = 'quantum'
version = '1.0-0'
source = {
  url = 'git://github.com/develCuy/libquantum-ffi.git',
  tag = '1.0.0',
}
description = {
  summary = 'LuaJIT FFI binding for libquantum.',
  homepage = 'https://github.com/develCuy/libquantum-ffi',
  license = 'AGPL-3',
  maintainer = 'Fernando Paredes Garcia <fernando@develcuy.com>',
}
dependencies = {
  'lua = 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['quantum'] = 'quantum.lua',
  },
}