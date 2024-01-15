local git_ref = 'v0'
local modrev = '0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-tree/nvim-web-devicons'

rockspec_format = '3.0'
package = 'nvim-web-devicons'
version = modrev ..'-'.. specrev

description = {
  summary = 'lua `fork` of vim-web-devicons for neovim',
  detailed = [[
Coloured file icons for neovim. Dark and light background variants.]],
  labels = { 'neovim', 'plugin' } ,
  homepage = 'https://github.com/nvim-tree/nvim-web-devicons',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-web-devicons-' .. '0',
}

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
