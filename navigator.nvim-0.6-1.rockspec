local git_ref = 'v0.6'
local modrev = '0.6'
local specrev = '1'

local repo_url = 'https://github.com/numToStr/Navigator.nvim'

rockspec_format = '3.0'
package = 'navigator.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Smoothly navigate between neovim and terminal multiplexer(s)',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/numToStr/Navigator.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'sqlite.lua' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'Navigator.nvim-' .. '0.6',
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
