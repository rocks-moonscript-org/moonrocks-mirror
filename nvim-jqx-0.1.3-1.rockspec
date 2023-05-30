local git_ref = 'v0.1.3'
local modrev = '0.1.3'
local specrev = '-1'

local repo_url = 'https://github.com/gennaro-tedesco/nvim-jqx'

rockspec_format = '3.0'
package = 'nvim-jqx'
version = modrev .. specrev

description = {
  summary = 'Populate the quickfix with json entries',
  detailed = '',
  labels = { 'lua', 'neovim' } ,
  homepage = 'https://github.com/gennaro-tedesco/nvim-jqx',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-jqx-' .. '0.1.3',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
