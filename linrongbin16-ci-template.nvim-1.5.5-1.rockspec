local git_ref = 'd6ecdcd058d0887e2da053e7c9d67220a9382526'
local modrev = '1.5.5'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/ci-template.nvim'

rockspec_format = '3.0'
package = 'linrongbin16-ci-template.nvim'
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
  dir = 'ci-template.nvim-' .. 'd6ecdcd058d0887e2da053e7c9d67220a9382526',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
