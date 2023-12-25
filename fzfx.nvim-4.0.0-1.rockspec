local git_ref = '2d22ed7b8c8547f27f0f401365f2dd82a3b6004c'
local modrev = '4.0.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/fzfx.nvim'

rockspec_format = '3.0'
package = 'fzfx.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'FZF-based fuzzy finder running on a dynamic engine that parsing user query and selection on every keystroke.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/linrongbin16/fzfx.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzfx.nvim-' .. '2d22ed7b8c8547f27f0f401365f2dd82a3b6004c',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
