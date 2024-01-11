local git_ref = 'c786cf1f9f34cf9e72d0b2c68dcc469a14d094a4'
local modrev = '2.0.0'
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
  dir = 'gentags.nvim-' .. 'c786cf1f9f34cf9e72d0b2c68dcc469a14d094a4',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
