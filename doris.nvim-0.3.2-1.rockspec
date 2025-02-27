local git_ref = 'v0.3.2'
local modrev = '0.3.2'
local specrev = '1'

local repo_url = 'https://github.com/jackokring/doris.nvim'

rockspec_format = '3.0'
package = 'doris.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim plugin with many features',
  detailed = '',
  labels = { 'cmp-autojump', 'demo', 'dotfiles', 'functional', 'lua', 'luarocks', 'nvim-plugin', 'oop', 'pages', 'plenary', 'static-library' } ,
  homepage = 'https://jackokring.github.io/doris.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'doris.nvim-' .. '0.3.2',
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
