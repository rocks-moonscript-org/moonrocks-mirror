local git_ref = '78557d972b4bfbb7488e17b5703d25164ae64e6a'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/folke/zen-mode.nvim'

rockspec_format = '3.0'
package = 'zen-mode.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Distraction-free coding for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/zen-mode.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zen-mode.nvim-' .. '78557d972b4bfbb7488e17b5703d25164ae64e6a',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
