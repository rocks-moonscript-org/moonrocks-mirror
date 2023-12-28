local git_ref = 'cdfc8490c81c04b39521b09cc7124bdd09e75ad5'
local modrev = '1.1.0'
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

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gentags.nvim-' .. 'cdfc8490c81c04b39521b09cc7124bdd09e75ad5',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
