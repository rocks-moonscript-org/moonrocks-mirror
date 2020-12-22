package = 'memo'
version = '1.0.0-0'

source = {
  url = 'git://github.com/evandrolg/memo.lua.git',
  tag = 'v1.0.0'
}

description = {
  summary = 'An implementation of the `memoize` technique in Lua',
  homepage = 'https://github.com/EvandroLG/memo.lua',
  maintainer = 'Evandro Leopoldino Goncalves (@evandrolg) <evandrolgoncalves@gmail.com>',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ['memo'] = "src/memo/init.lua",
  }
}
