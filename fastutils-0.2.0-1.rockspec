package = 'fastutils'
version = '0.2.0-1'
description = {
  summary = 'Collection of simple utils.',
  detailed = [[
# fastutils

Collection of simple utils.

## Installed Utils

- fastutils.strutils
    - string.capitalize
    - string.camel
    - string.is_in_array
    - string.startswith
    - string.endswith
    - string.is_match_patterns
    - string.trim
    - string.ltrim
    - string.rtrim

## Release

### 0.2.0-1

- First release.

  ]],
  homepage = 'https://github.com/zencore-cn/zencore-issues',
  license = 'MIT'
}
source = {
  url = 'https://luarocks.org/manifests/zencore/fastutils-0.2.0-1.src.rock',
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
