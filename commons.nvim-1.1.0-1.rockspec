local git_ref = 'b80bc0254dfc811d776a8c83c4829c6a4b2b5eed'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/commons.nvim'

rockspec_format = '3.0'
package = 'commons.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The commons lua library for Neovim plugin project.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/commons.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'commons.nvim-' .. 'b80bc0254dfc811d776a8c83c4829c6a4b2b5eed',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
