local git_ref = '5a2759d09556a7936c673cbfcea0a5d71b07a1ce'
local modrev = '1.13.4'
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
  dir = 'colorbox.nvim-' .. '5a2759d09556a7936c673cbfcea0a5d71b07a1ce',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
