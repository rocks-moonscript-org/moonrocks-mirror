local git_ref = 'bf28119ac1bf42a13a0e5e3bb3327080ad4dd5f3'
local modrev = '2.0.9'
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
  dir = 'colorbox.nvim-' .. 'bf28119ac1bf42a13a0e5e3bb3327080ad4dd5f3',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
