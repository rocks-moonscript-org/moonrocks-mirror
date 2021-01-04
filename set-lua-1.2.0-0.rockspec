package = 'set-lua'
version = '1.2.0-0'

source = {
  url = 'git://github.com/evandrolg/set-lua.git',
  tag = 'v1.2.0'
}

description = {
  summary = '`set-lua` is a complete implementation of the Set data structure',
  homepage = 'https://github.com/EvandroLG/set-lua',
  maintainer = 'Evandro Leopoldino Goncalves (@evandrolg) <evandrolgoncalves@gmail.com>',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ['Set'] = "src/Set/init.lua",
    ['Set.utils'] = "src/Set/utils.lua",
  }
}
