package = 'lua-simplelog'
version = '0.1.1-1'
source = {
  url = 'https://code.amlegion.org/lua-simplelog/zip/release-0.1.1/lua-simplelog-0.1.1.zip',
  file = 'lua-simplelog-0.1.1.zip'
}
description = {
  summary = 'A simple, capable, better logger for lua.',
  detailed = [[
    lua-simplelog is a logger for lua. It's aim is to provide a
    performant, simple logger, allowing for a log directory, opening
    multiple logs through its management facilities, and splitting
    upon dates. It also supports daemonization of the process
    utilizing it.
  ]],
  license = 'OWL',
  homepage = 'https://code.amlegion.org/lua-simplelog'
}
dependencies = {
  "lua >= 5.3"
}
build = {
  type = 'builtin',
  modules = {
    simplelog = 'simplelog.lua'
  }
}
