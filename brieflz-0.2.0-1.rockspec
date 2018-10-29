-- vim: set ft=lua:

package = 'brieflz'
version = '0.2.0-1'

source = { url = 'https://github.com/jirutka/brieflz.lua/archive/v0.2.0/brieflz.lua-0.2.0.tar.gz', md5 = '9b288733d1f85370eec61611481ca0a0' }

description = {
  summary = 'Lua binding for BriefLZ compression library',
  detailed = [[
This is a Lua binding for BriefLZ - a small and fast open source implementation
of a Lempel-Ziv style compression algorithm by Joergen Ibsen.]],
  homepage = 'https://github.com/jirutka/brieflz.lua',
  maintainer = 'Jakub Jirutka <jakub@jirutka.cz>',
  license = 'zlib',
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = 'builtin',
  modules = {
    brieflz = {
      sources = {
        'src/brieflz.c',
        'vendor/brieflz/src/brieflz.c',
        'vendor/brieflz/src/depacks.c',
      },
      incdirs = 'vendor/brieflz/include',
    },
  },
}
