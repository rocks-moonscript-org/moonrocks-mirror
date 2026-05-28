local git_ref = 'ca8f84fa56d47f568d3a72db996593d623d003fa'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/khwerhahn/okuban.nvim'

rockspec_format = '3.0'
package = 'okuban.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'okuban NeoVim plugin to boost productivity',
  detailed = '',
  labels = { 'github-cli', 'github-issues', 'kanban', 'lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/khwerhahn/okuban.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'okuban.nvim-' .. 'ca8f84fa56d47f568d3a72db996593d623d003fa',
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
