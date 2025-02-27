local git_ref = 'v1.1.1'
local modrev = '1.1.1'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rocks-lazy.nvim'

rockspec_format = '3.0'
package = 'rocks-lazy.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = ':sloth: A lazy-loading module for rocks.nvim',
  detailed = '',
  labels = { 'lazy-loading', 'luarocks', 'neovim', 'neovim-plugin', 'rocks-nvim' } ,
  homepage = 'https://github.com/nvim-neorocks/rocks-lazy.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'rocks.nvim >= 1.32.0', 'lz.n >= 2.8.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rocks-lazy.nvim-' .. '1.1.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
