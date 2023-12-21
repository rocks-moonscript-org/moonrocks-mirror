local git_ref = 'a2f1cb4072bb29fcc067605fb712bbd83917513e'
local modrev = '4.2.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neotest/neotest'

rockspec_format = '3.0'
package = 'neotest'
version = modrev ..'-'.. specrev

description = {
  summary = 'An extensible framework for interacting with tests within NeoVim.',
  detailed = '',
  labels = { 'lua', 'neovim' } ,
  homepage = 'https://github.com/nvim-neotest/neotest',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-' .. 'a2f1cb4072bb29fcc067605fb712bbd83917513e',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
