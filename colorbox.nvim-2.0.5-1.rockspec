local git_ref = '58243e62d959b87f5ad3c3d892e57d29586cea34'
local modrev = '2.0.5'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/colorbox.nvim'

rockspec_format = '3.0'
package = 'colorbox.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Load all the ultra colorschemes into Neovim player!',
  detailed = '',
  labels = { 'vim', 'neovim' } ,
  homepage = 'https://github.com/linrongbin16/colorbox.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorbox.nvim-' .. '58243e62d959b87f5ad3c3d892e57d29586cea34',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
