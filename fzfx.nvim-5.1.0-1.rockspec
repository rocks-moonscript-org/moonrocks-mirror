local git_ref = '2e9fbdec779e8aa7f13c22c2f7e082a654ef9a70'
local modrev = '5.1.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/fzfx.nvim'

rockspec_format = '3.0'
package = 'fzfx.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'FZF-based fuzzy finder running on a dynamic engine that parsing user query and selection on every keystroke.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/fzfx.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzfx.nvim-' .. '2e9fbdec779e8aa7f13c22c2f7e082a654ef9a70',
}

build = {
  type = 'builtin',
  copy_directories = { 'assets', 'bin', 'docs', 'spec' } ,
}
