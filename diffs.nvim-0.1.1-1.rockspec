local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '1'

local repo_url = 'https://github.com/barrettruth/diffs.nvim'

rockspec_format = '3.0'
package = 'diffs.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'treesitter syntax highlighting for vim-fugitive',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin', 'treesitter', 'vim' } ,
  homepage = 'https://github.com/barrettruth/diffs.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'diffs.nvim-' .. '0.1.1',
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
