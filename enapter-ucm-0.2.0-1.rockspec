rockspec_format = '3.0'
package = 'enapter-ucm'
local rock_version = '0.2.0'
local rock_release = '1'

version = ('%s-%s'):format(rock_version, rock_release)

source = {
  url = 'git+https://github.com/Enapter/enapter-ucm.lua.git',
  branch = rock_version == 'scm' and 'main' or nil,
  tag = rock_version ~= 'scm' and 'v' .. rock_version or nil,
}

description = {
  homepage = 'http://developers.enapter.com',
  license = 'MIT',
}

dependencies = {
  'lua ~> 5.3',
}

test_dependencies = {
  'busted',
  'luacov',
  'inspect',
}

build = {
  type = 'builtin',
  modules = {
    ['enapter.ucm.config'] = 'enapter/ucm/config.lua',
    ['enapter.ucm.qmodbus'] = 'enapter/ucm/qmodbus.lua',
  },
}

test = {
  type = 'busted',
}
