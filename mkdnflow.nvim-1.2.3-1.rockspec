local git_ref = 'v1.2.3'
local modrev = '1.2.3'
local specrev = '1'

local repo_url = 'https://github.com/jakewvincent/mkdnflow.nvim'

rockspec_format = '3.0'
package = 'mkdnflow.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Fluent navigation and management of markdown notebooks',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jakewvincent/mkdnflow.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mkdnflow.nvim-' .. '1.2.3',
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
