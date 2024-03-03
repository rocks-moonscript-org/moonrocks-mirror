local git_ref = '8f28246d53e9478717ca3b51c8112083fbebd7e3'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/asiryk/auto-hlsearch.nvim'

rockspec_format = '3.0'
package = 'auto-hlsearch.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Automatically manage hlsearch setting',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/asiryk/auto-hlsearch.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'auto-hlsearch.nvim-' .. '8f28246d53e9478717ca3b51c8112083fbebd7e3',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
