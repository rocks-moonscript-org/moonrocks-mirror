local git_ref = '1ce9ee35d2b869241091c0c7496c3cf0f3be981e'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/nvimtools/hydra.nvim'

rockspec_format = '3.0'
package = 'hydra.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Create custom submodes and menus',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimtools/hydra.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hydra.nvim-' .. '1ce9ee35d2b869241091c0c7496c3cf0f3be981e',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'syntax' } ,
}
