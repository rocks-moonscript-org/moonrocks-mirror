-- vim: set ft=lua:

package = 'brieflz'
version = '0.1.2-1'

source = { url = 'https://github.com/jirutka/brieflz.lua/archive/v0.1.2/brieflz.lua-0.1.2.tar.gz', md5 = 'bb4d78159487226b323e6cb0159a16fc' }

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
