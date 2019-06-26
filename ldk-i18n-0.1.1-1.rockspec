rockspec_format = '3.0'

package = 'ldk-i18n'
version = '0.1.1-1'
source = {
  url = 'git://github.com/luadevkit/ldk-i18n.git',
  branch = '0.1.1'
}
description = {
  summary = 'LDK - Simple i18n module',
  license = 'MIT',
  maintainer = 'info@luadevk.it'
}
dependencies = {
  'lua >= 5.3',
  'luadevkit/ldk-checks ~> 0.2'
}
build = {
  modules = {
    ['ldk.i18n'] = 'src/ldk/i18n.lua'
  }
}
test = {
  type = 'busted'
}
