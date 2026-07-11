local git_ref = 'beb2ce490b72048c587e8a3d919cba1b4608bb04'
local modrev = '1.6.73'
local specrev = '1'

local repo_url = 'https://github.com/MagicDuck/grug-far.nvim'

rockspec_format = '3.0'
package = 'grug-far.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Find And Replace plugin for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/MagicDuck/grug-far.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'grug-far.nvim-' .. 'beb2ce490b72048c587e8a3d919cba1b4608bb04',
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
