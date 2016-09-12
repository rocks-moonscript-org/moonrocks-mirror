-- vim: set ft=lua:

package = 'gversion'
version = '0.1.0-1'

source = {
  url = 'git://github.com/jirutka/gversion.lua.git',
  tag = 'v0.1.0',
}

description = {
  summary = 'Lua library for Gentoo-style versioning format',
  detailed = [[
    Gentoo versioning format (scheme) is like Semantic Versioning, but more
    flexible and complex. See details in
    https://devmanual.gentoo.org/ebuild-writing/file-format/#file-naming-rules.
  ]],
  homepage = 'https://github.com/jirutka/gversion.lua',
  maintainer = 'Jakub Jirutka <jakub@jirutka.cz>',
  license = 'MIT',
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = 'builtin',
  modules = {
    gversion = 'src/gversion.lua',
  },
}
