package = 'Lua-ReQL'
version = '0.6-3'
source = {
  url = 'git://github.com/grandquista/Lua-ReQL',
  tag = 'v0.6.x',
}
description = {
  summary = 'A Lua driver for RethinkDB.',
  homepage = 'https://github.com/grandquista/Lua-ReQL/wiki',
  license = 'Apache',
}
dependencies = {
  'lua > 5.1',
  'luasocket > 3',
  'luajson > 1.3',
}
build = {
  type = 'builtin',
  modules = {
    rethinkdb = 'src/rethinkdb.lua'
  }
}
