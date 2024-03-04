local git_ref = 'ee15b71a7e6f2755299d0ef0bf7ef00d8ed33401'
local modrev = '5.6.1'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/fzfx.nvim'

rockspec_format = '3.0'
package = 'fzfx.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A fzf fuzzy finder that updates on every keystroke of user query and selection.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/fzfx.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzfx.nvim-' .. 'ee15b71a7e6f2755299d0ef0bf7ef00d8ed33401',
}

build = {
  type = 'builtin',
  copy_directories = { 'bin', 'docs', 'spec' } ,
}
