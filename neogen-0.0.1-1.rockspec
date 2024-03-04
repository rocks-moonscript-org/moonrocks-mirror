local git_ref = '70127baaff25611deaf1a29d801fc054ad9d2dc1'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/danymat/neogen'

rockspec_format = '3.0'
package = 'neogen'
version = modrev ..'-'.. specrev

description = {
  summary = 'A better annotation generator. Supports multiple languages and annotation conventions.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/danymat/neogen',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neogen-' .. '70127baaff25611deaf1a29d801fc054ad9d2dc1',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
