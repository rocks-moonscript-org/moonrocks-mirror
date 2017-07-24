-- vim: set ft=lua:

package = 'brieflz'
version = '0.1.1-1'

source = { url = 'https://github.com/jirutka/brieflz.lua/archive/v0.1.1/brieflz.lua-0.1.1.tar.gz', md5 = '24cc5825c955bb778be0c7d7ee1208f0' }

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
        'vendor/brieflz/brieflz.c',
        'vendor/brieflz/depacks.c',
      },
      incdirs = 'vendor/brieflz',
    },
  },
}
