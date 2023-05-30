rockspec_format = '3.0'
package = 'enapter-ucm'
local rock_version = '0.3.2'
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
  'luacov-reporter-lcov',
  'inspect',
}

build = {
  type = 'builtin',
}

test = {
  type = 'busted',
}
