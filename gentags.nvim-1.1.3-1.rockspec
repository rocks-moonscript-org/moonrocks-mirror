local git_ref = '93d6475efdf5f3e700456cf6c4b0cf3c8f3a15a7'
local modrev = '1.1.3'
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
  dir = 'gentags.nvim-' .. '93d6475efdf5f3e700456cf6c4b0cf3c8f3a15a7',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
