package = 'tableutils'
version = '2.1.0-1'
source = {
  url = 'https://bitbucket.org/telemachus/tableutils/downloads/tableutils-v2.1.0-1.tar.gz',
  dir = 'tableutils',
}
description = {
  summary = 'Set of general-utility functions for working with tables',
  detailed = [[
    Lua is a small language, and as a result its standard library lacks several
    methods that users of other languages rely on. For example, `map`,
    `select`, `reduce` and more.

    This library provides two modules containing such methods: one for
    list-like tables and one for hash-like tables. Although Lua tables are not
    strictly lists or hashes, in practice I tend to use individual tables one
    way or the other. As such, it makes sense to have distinct utility methods
    for each of the two types.
  ]],
  license = 'BSD 3-clause',
  maintainer = 'Peter Aronoff <telemachus@arpinum.org>',
  homepage = 'https://bitbucket.org/telemachus/tableutils'
}
dependencies = {
  'lua >= 5.1'
}
build = {
  type = 'builtin',
  modules = {
    listutils = 'src/listutils.lua',
    hashutils = 'src/hashutils.lua',
  }
}
