package = 'map'
version = '1.0.0-0'

source = {
  url = 'git://github.com/evandrolg/map.git',
  tag = 'v1.0.0'
}

description = {
  summary = 'Map works like a hashtable but preserving the key insertion order',
  homepage = 'https://github.com/EvandroLG/Map',
  maintainer = 'Evandro Leopoldino Goncalves (@evandrolg) <evandrolgoncalves@gmail.com>',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ['Map'] = "src/Map/init.lua",
  }
}
