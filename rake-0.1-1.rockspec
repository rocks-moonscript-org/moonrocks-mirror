package = 'rake'
version = '0.1-1'
source = {
  url = 'git://github.com/polymeris/lua-rake',
}
description = {
  summary = 'Rapid Automatic Keyword Extraction',
  detailed = [[
    Implementation of the Rapid Automatic Keyword Extraction (RAKE) algorithm as described
    in: Rose, S., Engel, D., Cramer, N., & Cowley, W. (2010).
  ]],
  homepage = 'https://github.com/polymeris/lua-rake',
  license = 'MIT'
}
dependencies = {
  'lua ~> 5.1'
}
build = {
  type = "builtin",
  modules = {
    rake = 'rake.lua'
  }
}
