local git_ref = 'v1.3.0'
local modrev = '1.3.0'
local specrev = '1'

local repo_url = 'https://github.com/Willem-J-an/adopure.nvim'

rockspec_format = '3.0'
package = 'adopure.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin providing an opinionated workflow to interact with Azure DevOps Pull Requests.',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://luarocks.org/modules/Willem-J-an/adopure.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'adopure.nvim-' .. '1.3.0',
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
