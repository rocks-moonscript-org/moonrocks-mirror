local git_ref = '14dad2f7ac2489faed5545c024e911102be02ef4'
local modrev = '1.1.1'
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
  dir = 'gentags.nvim-' .. '14dad2f7ac2489faed5545c024e911102be02ef4',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
