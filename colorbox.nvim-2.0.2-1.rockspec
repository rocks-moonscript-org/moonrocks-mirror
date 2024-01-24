local git_ref = 'e6903c0c9c62a7c6341a431c102ee50b4473bc86'
local modrev = '2.0.2'
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
  dir = 'colorbox.nvim-' .. 'e6903c0c9c62a7c6341a431c102ee50b4473bc86',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
