package = 'scheduler'
version = '1.1-1'
source = {
  url = 'https://github.com/ryanplusplus/scheduler.lua/archive/v1.1-1.tar.gz',
  dir = 'scheduler.lua-1.1-1'
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
