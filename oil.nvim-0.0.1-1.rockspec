local git_ref = '29a06fcc906f57894c1bc768219ba590e03d1121'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/stevearc/oil.nvim'

rockspec_format = '3.0'
package = 'oil.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim file explorer: edit your filesystem like a buffer',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/oil.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'oil.nvim-' .. '29a06fcc906f57894c1bc768219ba590e03d1121',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'syntax' } ,
}
