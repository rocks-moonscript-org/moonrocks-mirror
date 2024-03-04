local git_ref = 'da94399044a7d18d0fc1e0e27967ed1f1f4577f6'
local modrev = '2.0.14'
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
  dir = 'colorbox.nvim-' .. 'da94399044a7d18d0fc1e0e27967ed1f1f4577f6',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
