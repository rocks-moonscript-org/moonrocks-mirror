local git_ref = '0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/elfranne/haproxy-lua-acme'

rockspec_format = '3.0'
package = 'haproxy-lua-acme'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/elfranne/haproxy-lua-acme',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'haproxy-lua-acme-' .. '0.1.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
