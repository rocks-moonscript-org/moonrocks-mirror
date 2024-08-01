local git_ref = 'v1.0.3'
local modrev = '1.0.3'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rocks-treesitter.nvim'

rockspec_format = '3.0'
package = 'rocks-treesitter.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A "just works" tree-sitter setup for rocks.nvim!',
  detailed = '',
  labels = { 'neovim', 'rocks', 'rocks-nvim', 'tree-sitter', 'treesitter' } ,
  homepage = 'https://github.com/nvim-neorocks/rocks-treesitter.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'rocks.nvim >= 1.19.0' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rocks-treesitter.nvim-' .. '1.0.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
