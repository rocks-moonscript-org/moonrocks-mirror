local git_ref = 'v2.2.0'
local modrev = '2.2.0'
local specrev = '1'

local repo_url = 'https://github.com/stevearc/dressing.nvim'

rockspec_format = '3.0'
package = 'dressing.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin to improve the default vim.ui interfaces',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/dressing.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dressing.nvim-' .. '2.2.0',
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
