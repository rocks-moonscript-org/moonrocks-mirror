package = 'immutable'
version = '1.0.0-0'

source = {
  url = 'https://github.com/evandrolg/immutable.git',
  tag = 'v1.0.0'
}

description = {
  summary = '`immutable` is a tiny library that makes easy to work with immutable data.',
  homepage = 'https://github.com/EvandroLG/immutable',
  maintainer = 'Evandro Leopoldino Goncalves (@evandrolg) <evandrolgoncalves@gmail.com>',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ['immutable'] = "src/immutable/init.lua",
  }
}
