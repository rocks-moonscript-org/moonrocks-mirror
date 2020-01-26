rockspec_format = '3.0'
package = 'httoolsp'
version = '0.3.0-1'
description = {
  summary = 'A collection of HTTP-related pure Lua helper functions',
  license = 'MIT',
  homepage = 'https://github.com/un-def/httoolsp',
  issues_url = 'https://github.com/un-def/httoolsp/issues',
  maintainer = 'un.def <me@undef.im>',
  labels = {'http', 'batteries'},
}
dependencies = {
  'lua >= 5.1',
}
source = {
  url = 'git://github.com/un-def/httoolsp.git',
  tag = '0.3.0',
}
build = {
  type = 'builtin',
  modules = {
    ['httoolsp'] = 'src/httoolsp/init.lua',
    ['httoolsp.formdata'] = 'src/httoolsp/formdata.lua',
    ['httoolsp.utils'] = 'src/httoolsp/utils.lua',
  },
}
