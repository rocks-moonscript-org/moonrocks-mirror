local git_ref = '938308f997b9f056aecc3bd8ac091a27ff71f262'
local modrev = '5.1.4'
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

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzfx.nvim-' .. '938308f997b9f056aecc3bd8ac091a27ff71f262',
}

build = {
  type = 'builtin',
  copy_directories = { 'bin', 'docs', 'spec' } ,
}
