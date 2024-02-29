local git_ref = '703bdf4cf5bc68f53bdd1b70fd976c8c1f80085c'
local modrev = '2.0.11'
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
  dir = 'colorbox.nvim-' .. '703bdf4cf5bc68f53bdd1b70fd976c8c1f80085c',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
