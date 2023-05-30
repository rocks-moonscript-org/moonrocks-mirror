local git_ref = '1.0.2'
local modrev = '1.0.2'
local specrev = '-1'

local repo_url = 'https://github.com/avinashupadhya99/kong-event-pub'

rockspec_format = '3.0'
package = 'kong-event-pub-plugin'
version = modrev .. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/avinashupadhya99/kong-event-pub',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'kong-event-pub-' .. '1.0.2',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
