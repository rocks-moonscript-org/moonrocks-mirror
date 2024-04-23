local git_ref = 'v5.1.0'
local modrev = '5.1.0'
local specrev = '1'

local repo_url = 'https://github.com/filipdutescu/renamer.nvim'

rockspec_format = '3.0'
package = 'renamer.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'VS Code-like renaming UI for Neovim, writen in Lua.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/filipdutescu/renamer.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'renamer.nvim-' .. '5.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
