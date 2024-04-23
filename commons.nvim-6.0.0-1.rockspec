local git_ref = '640d77042260e7ed68c5b234e44751193c2a5781'
local modrev = '6.0.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/commons.nvim'

rockspec_format = '3.0'
package = 'commons.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The commons lua library for Neovim plugin project.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://linrongbin16.github.io/commons.nvim/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'commons.nvim-' .. '640d77042260e7ed68c5b234e44751193c2a5781',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
