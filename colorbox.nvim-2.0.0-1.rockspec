local git_ref = '3d289176498db706fbec7cd23378d7c593f876e3'
local modrev = '2.0.0'
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
  dir = 'colorbox.nvim-' .. '3d289176498db706fbec7cd23378d7c593f876e3',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
