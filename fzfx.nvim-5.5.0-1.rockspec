local git_ref = 'a523fc36beb9c49aa9b501b0be2addf8449d903f'
local modrev = '5.5.0'
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
  dir = 'fzfx.nvim-' .. 'a523fc36beb9c49aa9b501b0be2addf8449d903f',
}

build = {
  type = 'builtin',
  copy_directories = { 'bin', 'docs', 'spec' } ,
}
