package = 'fastutils'
version = '0.4.0-1'
description = {
  summary = 'Collection of simple utils.',
  homepage = 'https://github.com/zencore-cn/zencore-issues',
  license = 'MIT'
}
source = {
  url = 'https://luarocks.org/manifests/zencore/fastutils-0.4.0-1.src.rock',
}
dependencies = {
  'lua ~> 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['fastutils.strutils'] = 'src/fastutils/strutils.lua',
  }
}
