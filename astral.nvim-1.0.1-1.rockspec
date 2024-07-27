local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '-1'

local repo_url = 'https://github.com/rootiest/astral.nvim'

rockspec_format = '3.0'
package = 'astral.nvim'
version = modrev .. specrev

description = {
  summary = 'NeoVim Colorscheme Management',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/rootiest/astral.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'astral.nvim-' .. '1.0.1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
