package = 'Lua-ReQL'
version = '0.2-0'
source = {
  url = 'git://github.com/grandquista/Lua-ReQL',
  tag = 'v0.2.0',
}
description = {
  summary = 'A Lua driver for RethinkDB.',
  homepage = 'https://github.com/grandquista/Lua-ReQL/wiki',
  license = 'Apache',
}
dependencies = {
  'lua >= 5',
  'luasocket >= 2',
  'luajson ~> 1.3',
}
build = {
  type = 'builtin',
  modules = {
    ast = 'src/ast.lua',
    cursor = 'src/cursor.lua',
    errors = 'src/errors.lua',
    net = 'src/net.lua',
    proto = 'src/proto.lua',
    rethinkdb = 'src/rethinkdb.lua',
  }
}
