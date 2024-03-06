local git_ref = 'bd1bcf6eb16ee050192759ea3271cbeeba4c2c59'
local modrev = '3.0.1'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/gentags.nvim'

rockspec_format = '3.0'
package = 'gentags.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tags generator/management for old school vimers in Neovim.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/gentags.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gentags.nvim-' .. 'bd1bcf6eb16ee050192759ea3271cbeeba4c2c59',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
