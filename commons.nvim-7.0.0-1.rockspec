local git_ref = 'dd7fb546c76b6b59b98ddf82570dd3a6669fd3c4'
local modrev = '7.0.0'
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
  dir = 'commons.nvim-' .. 'dd7fb546c76b6b59b98ddf82570dd3a6669fd3c4',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
