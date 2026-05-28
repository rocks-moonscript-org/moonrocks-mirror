local git_ref = '0a75e944a1e47e18d337761c89c7550357198da0'
local modrev = '0.1.2'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/pipenv.nvim'

rockspec_format = '3.0'
package = 'pipenv.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Manage Pipenv from within Neovim',
  detailed = [[
Manage Pipenv from within Neovim.]],
  labels = { 'neovim' } ,
  homepage = 'https://luarocks.org/modules/drkjeff16/pipenv.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'pipenv.nvim-' .. '0a75e944a1e47e18d337761c89c7550357198da0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
