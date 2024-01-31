local git_ref = '98bcbf8480d4145783274f5eb584587da8d8de93'
local modrev = '5.1.1'
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
  dir = 'fzfx.nvim-' .. '98bcbf8480d4145783274f5eb584587da8d8de93',
}

build = {
  type = 'builtin',
  copy_directories = { 'assets', 'bin', 'docs', 'spec' } ,
}
