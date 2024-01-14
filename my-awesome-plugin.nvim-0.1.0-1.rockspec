local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/my-awesome-plugin.nvim'

rockspec_format = '3.0'
package = 'my-awesome-plugin.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A template for Neovim plugin',
  detailed = [[
A simple way to kickstart your Neovim plugin development like a pro with:
- Plugin Structure
- Tests
- Docs Generation
- Linting and Formatting
- Deployment]],
  labels = { 'neovim', 'nvim-plugin', 'template' } ,
  homepage = 'https://github.com/S1M0N38/my-awesome-plugin.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'my-awesome-plugin.nvim-' .. '0.1.0',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
