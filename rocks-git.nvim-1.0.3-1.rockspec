local git_ref = 'v1.0.3'
local modrev = '1.0.3'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rocks-git.nvim'

rockspec_format = '3.0'
package = 'rocks-git.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use rocks.nvim to install plugins from git!',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neorocks/rocks-git.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'rocks.nvim >= 2.4.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rocks-git.nvim-' .. '1.0.3',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
