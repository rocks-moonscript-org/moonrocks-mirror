local git_ref = 'bb2deb5c9da1c516a17ad70a95b5e575cbe20782'
local modrev = '4.2.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/ci-template.nvim'

rockspec_format = '3.0'
package = 'ci-template.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'CI template for Neovim plugin project.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/ci-template.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ci-template.nvim-' .. 'bb2deb5c9da1c516a17ad70a95b5e575cbe20782',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
