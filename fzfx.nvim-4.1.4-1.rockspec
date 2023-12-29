local git_ref = '2c4d3cd6e31a972e7c38b5a4b95805ff053601fb'
local modrev = '4.1.4'
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
  dir = 'fzfx.nvim-' .. '2c4d3cd6e31a972e7c38b5a4b95805ff053601fb',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
