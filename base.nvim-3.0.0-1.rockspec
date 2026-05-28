local git_ref = 'v3.0.0'
local modrev = '3.0.0'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/base.nvim'

rockspec_format = '3.0'
package = 'base.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '⛶ A template for Neovim plugin',
  detailed = '',
  labels = { 'neovim', 'nvim-plugin', 'template' } ,
  homepage = 'https://github.com/S1M0N38/base.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'base.nvim-' .. '3.0.0',
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
