local git_ref = 'eab83304edd70225838552226eb3f04b9a0a5180'
local modrev = '1.4.0'
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
  dir = 'commons.nvim-' .. 'eab83304edd70225838552226eb3f04b9a0a5180',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
