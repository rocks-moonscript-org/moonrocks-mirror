package = 'lua-basex'
version = '0.1.0-1'
source = {
  url = 'git://github.com/un-def/lua-basex.git',
  tag = '0.1.0',
}
description = {
  summary = 'Base encoding/decoding of any given alphabet using bitcoin style leading zero compression',
  homepage = 'https://github.com/un-def/lua-basex',
  license = '2-clause BSD',
  maintainer = 'un.def <un.def@ya.ru>',
}
dependencies = {
  'lua >= 5.1, < 5.4',
}
build = {
  type = 'builtin',
  modules = {
    basex = 'basex.lua'
  },
}
