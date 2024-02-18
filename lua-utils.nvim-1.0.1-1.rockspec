local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/lua-utils.nvim'

rockspec_format = '3.0'
package = 'lua-utils.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A set of utility functions for Neovim plugins.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/nvim-neorg/lua-utils.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lua-utils.nvim-' .. '1.0.1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
