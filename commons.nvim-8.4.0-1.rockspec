local git_ref = 'e38d0d9be4578cc9772cbe6d5543fa0d39c8cd52'
local modrev = '8.4.0'
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
  dir = 'commons.nvim-' .. 'e38d0d9be4578cc9772cbe6d5543fa0d39c8cd52',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
