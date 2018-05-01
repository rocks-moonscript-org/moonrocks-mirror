package = 'loveconsole'
version = '0.1.0-1'
source = {
  url = "git://github.com/sternold/loveconsole",
  branch = "master"
}
description = {
  summary = 'Console application functionality in Löve2D',
  detailed = [[
    Use the Löve2D engine as a console application for Roguelikes and similar games.
  ]],
  homepage = 'http://github.com/sternold/loveconsole',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.1'
}
build = {
  type = 'builtin',
  modules = {
    ['loveconsole']                                   = 'console.lua',
    ['loveconsole.colors']                            = 'colors.lua',
  }
}