local git_ref = '00f39d66a88948c48dadf3462b44ed30556ba73f'
local modrev = '1.5.0'
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
  dir = 'ci-template.nvim-' .. '00f39d66a88948c48dadf3462b44ed30556ba73f',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
