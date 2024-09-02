package = 'scheduler'
version = '1.0-2'
source = {
  url = 'https://github.com/ryanplusplus/scheduler.lua/archive/v1.0-2.tar.gz',
  dir = 'scheduler.lua-1.0-2'
}
description = {
  summary = 'Simple coroutine scheduler.',
  homepage = 'https://github.com/ryanplusplus/scheduler.lua/',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.2',
  'cffi-lua ~> 0.2'
}
build = {
  type = 'builtin',
  modules = {
    ['Scheduler'] = 'Scheduler.lua'
  }
}
