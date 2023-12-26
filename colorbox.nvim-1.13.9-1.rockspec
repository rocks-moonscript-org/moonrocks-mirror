local git_ref = '1dff0f33d0c423f67d0cde1d5b23fc636ae2c255'
local modrev = '1.13.9'
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
  dir = 'colorbox.nvim-' .. '1dff0f33d0c423f67d0cde1d5b23fc636ae2c255',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
