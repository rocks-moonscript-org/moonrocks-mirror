local git_ref = 'a2bd33c3d76a00c3bc2e7fc8db1a144007810bb3'
local modrev = '1.13.7'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/colorbox.nvim'

rockspec_format = '3.0'
package = 'colorbox.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Load all the ultra colorschemes into your Neovim player!',
  detailed = '',
  labels = { 'vim', 'neovim' } ,
  homepage = 'https://github.com/linrongbin16/colorbox.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorbox.nvim-' .. 'a2bd33c3d76a00c3bc2e7fc8db1a144007810bb3',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
