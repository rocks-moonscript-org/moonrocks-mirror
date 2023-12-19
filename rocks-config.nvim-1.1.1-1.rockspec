local git_ref = '5c17e33795c82a1769eda8aad2821c967b658240'
local modrev = '1.1.1'
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
  dir = 'rocks-config.nvim-' .. '5c17e33795c82a1769eda8aad2821c967b658240',
}

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
