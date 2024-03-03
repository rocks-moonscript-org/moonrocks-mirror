local git_ref = '48817af25f51c0590653bbc290866e4890fe1cbe'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/folke/flash.nvim'

rockspec_format = '3.0'
package = 'flash.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Navigate your code with search labels, enhanced character motions and Treesitter integration',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/flash.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'flash.nvim-' .. '48817af25f51c0590653bbc290866e4890fe1cbe',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
