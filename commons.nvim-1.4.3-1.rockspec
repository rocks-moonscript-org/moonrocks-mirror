local git_ref = '775b1da54926ff2b4eeaf73c5f2bcb20fca3e7ac'
local modrev = '1.4.3'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/commons.nvim'

rockspec_format = '3.0'
package = 'commons.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The commons lua library for Neovim plugin project.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/commons.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'commons.nvim-' .. '775b1da54926ff2b4eeaf73c5f2bcb20fca3e7ac',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
