rockspec_format = '3.0'
package = 'luacasc'
version = '1.14-0'
source = {
  url = 'https://www.townlong-yak.com/casc/files/luacasc-1.14.zip',
  dir = 'luacasc',
}
dependencies = {
  'lua = 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['casc'] = 'casc/init.lua',
    ['casc.bin'] = 'casc/bin.lua',
    ['casc.binc'] = 'casc/bin.c',
    ['casc.blte'] = 'casc/blte.lua',
    ['casc.bspatch'] = 'casc/bspatch.lua',
    ['casc.dbc'] = 'casc/dbc.lua',
    ['casc.encoding'] = 'casc/encoding.lua',
    ['casc.install'] = 'casc/install.lua',
    ['casc.jenkins96'] = 'casc/jenkins96.lua',
    ['casc.md5'] = 'casc/md5.lua',
    ['casc.platform'] = 'casc/platform.lua',
    ['casc.ribbit'] = 'casc/ribbit.lua',
    ['casc.root'] = 'casc/root.lua',
  },
}
