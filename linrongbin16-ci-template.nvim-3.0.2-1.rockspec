local git_ref = '20d1bbcdbbe9a4569a62ee9f1b22423847f207bd'
local modrev = '3.0.2'
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
  dir = 'ci-template.nvim-' .. '20d1bbcdbbe9a4569a62ee9f1b22423847f207bd',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
