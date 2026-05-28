local git_ref = 'v0.3.0'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/juniorsundar/cling.nvim'

rockspec_format = '3.0'
package = 'cling.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Thin wrapper around your command-line',
  detailed = '',
  labels = { 'cli', 'lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/juniorsundar/cling.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cling.nvim-' .. '0.3.0',
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
