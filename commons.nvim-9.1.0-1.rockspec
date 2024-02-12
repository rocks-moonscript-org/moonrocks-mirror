local git_ref = 'f7f0130bcae61dc89ef31c71abb2fe4bd8c6ad8d'
local modrev = '9.1.0'
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
  dir = 'commons.nvim-' .. 'f7f0130bcae61dc89ef31c71abb2fe4bd8c6ad8d',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
