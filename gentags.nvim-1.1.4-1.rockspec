local git_ref = 'a15f6d18c6ee7246b4b47f534db95f6bd8d6cf38'
local modrev = '1.1.4'
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
  dir = 'gentags.nvim-' .. 'a15f6d18c6ee7246b4b47f534db95f6bd8d6cf38',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
