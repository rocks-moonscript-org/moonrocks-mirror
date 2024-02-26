local git_ref = '692e16be8835abc358fd7ebfa4c08434e30a2ba7'
local modrev = '5.5.1'
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
  dir = 'fzfx.nvim-' .. '692e16be8835abc358fd7ebfa4c08434e30a2ba7',
}

build = {
  type = 'builtin',
  copy_directories = { 'bin', 'docs', 'spec' } ,
}
