local git_ref = 'v0.2.2'
local modrev = '0.2.2'
local specrev = '1'

local repo_url = 'https://git.barrettruth.com/barrettruth/forge.nvim'

rockspec_format = '3.0'
package = 'forge.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'forge-agnostic git workflow for Neovim',
  detailed = '',
  labels = { 'fzf-lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://git.barrettruth.com/barrettruth/forge.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'forge.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
