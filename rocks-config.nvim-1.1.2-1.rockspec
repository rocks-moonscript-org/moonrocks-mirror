local git_ref = '31abee4b83d8e6adee2f63e0695100f662cf5f1d'
local modrev = '1.1.2'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rocks-config.nvim'

rockspec_format = '3.0'
package = 'rocks-config.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Allow rocks.nvim to help configure your plugins.',
  detailed = [[
rocks-config.nvim is a rocks.nvim utility module for helping to configure
your Neovim setup.
Features:
- Execute a specific Lua file per plugin
- Automatically invoke the setup() function for every installed plugin
- Statically configure a plugin using TOML syntax directly from within your rocks.toml]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neorocks/rocks-config.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'rocks.nvim >= 2.3.3' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rocks-config.nvim-' .. '31abee4b83d8e6adee2f63e0695100f662cf5f1d',
}

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
