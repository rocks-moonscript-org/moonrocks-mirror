local git_ref = '9863ae527517f8ae984f8c415a271c5435d006ef'
local modrev = '1.1.2'
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
  dir = 'gentags.nvim-' .. '9863ae527517f8ae984f8c415a271c5435d006ef',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
