local git_ref = '3875d4df80f16e39794994f5e9e7c6c73abc5e3a'
local modrev = '1.4.1'
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
  dir = 'ci-template.nvim-' .. '3875d4df80f16e39794994f5e9e7c6c73abc5e3a',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
