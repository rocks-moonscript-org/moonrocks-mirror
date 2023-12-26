local git_ref = '06a1e7742e18787d23b39106209802e2ce10f9f1'
local modrev = '4.1.2'
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
  dir = 'fzfx.nvim-' .. '06a1e7742e18787d23b39106209802e2ce10f9f1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
