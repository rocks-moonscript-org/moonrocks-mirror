package = 'pipe'
version = '1.0.0-0'

source = {
  url = 'git://github.com/evandrolg/pipe.lua.git',
  tag = 'v1.0.0'
}

description = {
  summary = 'An implementation of the `pipeline` operator in Lua',
  homepage = 'https://github.com/EvandroLG/pipe.lua',
  maintainer = 'Evandro Leopoldino Gonçalves (@evandrolg) <evandrolgoncalves@gmail.com>',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ['pipe'] = "pipe.lua"
  }
}
