package = 'lua-resty-fastutils'
version = '0.1.0-1'
description = {
  summary = 'Collection of simple utils.',
  homepage = 'https://github.com/zencore-cn/zencore-issues',
  license = 'MIT'
}
source = {
  url = 'https://luarocks.org/manifests/zencore/lua-resty-fastutils-0.1.0-1.src.rock',
}
dependencies = {
  'lua ~> 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['resty.fastutils.redisutils'] = 'src/fastutils/redisutils.lua',
    ['resty.fastutils.httputils'] = 'src/fastutils/httputils.lua',
  }
}
