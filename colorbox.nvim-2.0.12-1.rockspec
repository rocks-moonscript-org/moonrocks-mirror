local git_ref = '9c4c0ccff42fa6154779b4389defeaa1bfa3c164'
local modrev = '2.0.12'
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

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorbox.nvim-' .. '9c4c0ccff42fa6154779b4389defeaa1bfa3c164',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
