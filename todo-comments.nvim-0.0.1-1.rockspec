local git_ref = '833d8dd8b07eeda37a09e99460f72a02616935cb'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/folke/todo-comments.nvim'

rockspec_format = '3.0'
package = 'todo-comments.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Highlight, list and search todo comments in your projects',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/todo-comments.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'todo-comments.nvim-' .. '833d8dd8b07eeda37a09e99460f72a02616935cb',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
