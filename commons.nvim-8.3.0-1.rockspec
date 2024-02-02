local git_ref = '40c53ad6f1abfe759b16844615c669b6279202b1'
local modrev = '8.3.0'
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
  dir = 'commons.nvim-' .. '40c53ad6f1abfe759b16844615c669b6279202b1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
