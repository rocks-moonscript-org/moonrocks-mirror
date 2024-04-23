local git_ref = '1a15f5431fd4ff9a5f32de9a9d6cff14de41ddcd'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/commons.nvim'

rockspec_format = '3.0'
package = 'commons.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The commons lua library for Neovim plugin project.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/commons.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'commons.nvim-' .. '1a15f5431fd4ff9a5f32de9a9d6cff14de41ddcd',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
