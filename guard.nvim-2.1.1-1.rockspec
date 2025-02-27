local git_ref = 'v2.1.1'
local modrev = '2.1.1'
local specrev = '1'

local repo_url = 'https://github.com/nvimdev/guard.nvim'

rockspec_format = '3.0'
package = 'guard.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Lightweight, fast and async formatting and linting plugin for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/nvimdev/guard.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'guard.nvim-' .. '2.1.1',
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
