local git_ref = 'v0.0.2'
local modrev = '0.0.2'
local specrev = '1'

local repo_url = 'https://github.com/diegofigs/npackages.nvim'

rockspec_format = '3.0'
package = 'npackages.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'neovim plugin for managing node\'s package.json',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin', 'node', 'packages', 'plugin' } ,
  homepage = 'https://github.com/diegofigs/npackages.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'npackages.nvim-' .. '0.0.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
