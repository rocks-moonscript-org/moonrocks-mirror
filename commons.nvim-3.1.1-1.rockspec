local git_ref = 'a5f81e30bab4b8dc5fb99da7a238bd3a83a749c2'
local modrev = '3.1.1'
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
  dir = 'commons.nvim-' .. 'a5f81e30bab4b8dc5fb99da7a238bd3a83a749c2',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
