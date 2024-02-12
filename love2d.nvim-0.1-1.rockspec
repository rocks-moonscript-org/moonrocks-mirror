local git_ref = 'v0.1'
local modrev = '0.1'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/love2d.nvim'

rockspec_format = '3.0'
package = 'love2d.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A simple Neovim plugin to build game with LÖVE',
  detailed = [[
A simple Neovim plugin to build game with LÖVE.
Read the documentation with `:help love2d`.]],
  labels = { },
  homepage = 'https://github.com/S1M0N38/love2d.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'love2d.nvim-' .. '0.1',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
