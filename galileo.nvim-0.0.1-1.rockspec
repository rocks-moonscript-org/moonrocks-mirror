local git_ref = 'v0.0.1'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/galileo.nvim'

rockspec_format = '3.0'
package = 'galileo.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/S1M0N38/galileo.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'galileo.nvim-' .. '0.0.1',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
