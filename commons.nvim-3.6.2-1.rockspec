local git_ref = '06c61387183f095c6ff7f4aaca6a79fe22fbca47'
local modrev = '3.6.2'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/commons.nvim'

rockspec_format = '3.0'
package = 'commons.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The commons lua library for Neovim plugin project.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://linrongbin16.github.io/commons.nvim/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'commons.nvim-' .. '06c61387183f095c6ff7f4aaca6a79fe22fbca47',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
