local git_ref = 'b9097dfcd02208d61c38178ede0f41c9ab35eacf'
local modrev = '5.1.3'
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
  dir = 'fzfx.nvim-' .. 'b9097dfcd02208d61c38178ede0f41c9ab35eacf',
}

build = {
  type = 'builtin',
  copy_directories = { 'bin', 'docs', 'spec' } ,
}
