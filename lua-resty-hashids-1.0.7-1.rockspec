package = 'lua-resty-hashids'
version = '1.0.7-1'
source = {
  url = 'git+https://github.com/zhanlangorz/hashids.lua.git',
  tag = 'v1.0.7',
}
description = {
  summary = 'A Lua implementation of hashids fork from Leif Högberg\'s github repo',
  homepage = 'https://github.com/zhanlangorz/hashids.lua',
  license = 'MIT',
  maintainer = 'jiantaoli',
}
dependencies = {
  'lua >= 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['hashids.init'] = 'src/init.lua',
    ['hashids.clib'] = {
        sources = 'src/clib.c'
    },
  },
}
