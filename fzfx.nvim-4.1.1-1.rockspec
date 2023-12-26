local git_ref = 'f97a20699fc92ca9d8771c0bb6692f3578e25468'
local modrev = '4.1.1'
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
  dir = 'fzfx.nvim-' .. 'f97a20699fc92ca9d8771c0bb6692f3578e25468',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
