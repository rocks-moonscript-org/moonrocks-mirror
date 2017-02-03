-- luacheck: no global
package = 'coronastd'
version = '1.0-2'
source = {
  url = 'git+https://github.com/HappyPaladin/coronastd',
  tag = 'v1.0'
}
description = {
  summary = 'Luacheck standard set of globals (std) for Corona SDK',
  homepage = 'https://github.com/HappyPaladin/coronastd',
  license = 'MIT'
}
dependencies = {
  'lua >= 5.1',
  'luacheck >= 0.17.0'
}
build = {
  type = 'builtin',
  modules = {
    coronastd = 'coronastd.lua'
  }
}
