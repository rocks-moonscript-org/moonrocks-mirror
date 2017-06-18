-- vim: set ft=lua:

package = 'LuaSrcDiet'
version = '0.2.0-2'

source = { url = 'https://github.com/jirutka/luasrcdiet/archive/v0.2.0/luasrcdiet-0.2.0.tar.gz', md5 = '0569370cc02611973224444234f2c978' }

description = {
  summary = 'Compresses Lua source code by removing unnecessary characters',
  detailed = [[
This is revival of LuaSrcDiet originally written by Kein-Hong Man.]],
  homepage = 'https://github.com/jirutka/luasrcdiet',
  maintainer = 'Jakub Jirutka <jakub@jirutka.cz>',
  license = 'MIT',
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = 'builtin',
  modules = {
    ['luasrcdiet.plugin.example'] = 'luasrcdiet/plugin/example.lua',
    ['luasrcdiet.plugin.html'] = 'luasrcdiet/plugin/html.lua',
    ['luasrcdiet.plugin.sloc'] = 'luasrcdiet/plugin/sloc.lua',
    ['luasrcdiet.equiv'] = 'luasrcdiet/equiv.lua',
    ['luasrcdiet.llex'] = 'luasrcdiet/llex.lua',
    ['luasrcdiet.lparser'] = 'luasrcdiet/lparser.lua',
    ['luasrcdiet.LuaSrcDiet'] = 'luasrcdiet/LuaSrcDiet.lua',
    ['luasrcdiet.optlex'] = 'luasrcdiet/optlex.lua',
    ['luasrcdiet.optparser'] = 'luasrcdiet/optparser.lua',
  },
  install = {
    bin = {
      luasrcdiet = 'luasrcdiet/LuaSrcDiet.lua',
    }
  }
}
