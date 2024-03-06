local git_ref = '6a7af8e6bbb3d0d96a08433a801e3cba1486c365'
local modrev = '3.0.0'
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
  dir = 'gentags.nvim-' .. '6a7af8e6bbb3d0d96a08433a801e3cba1486c365',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
