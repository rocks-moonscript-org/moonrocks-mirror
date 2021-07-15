rockspec_format = '3.0'
package = 'wowcig'
version = '0.1-1'
source = {
  url = 'git://github.com/ferronn-dev/wowcig',
}
dependencies = {
  'lua = 5.1',
  'argparse',
  'lua-path',
  'luabitop',
  'luacasc',
  'luadbc',
  'luaexpat',
  'luafilesystem',
  'luasocket',
  'lzlib',
  'md5',
}
build = {
  type = 'none',
  install = {
    bin = {
      wowcig = 'wowcig.lua',
    },
  },
}
