rockspec_format = '3.0'
package = 'luadbc'
version = '1.12-0'
source = {
  url = 'https://www.townlong-yak.com/casc/files/luadbc-1.12.zip',
  dir = 'luadbc',
}
dependencies = {
  'lua = 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['dbc'] = 'dbc/init.lua',
    ['dbc.bin'] = 'dbc/bin.lua',
  },
}
