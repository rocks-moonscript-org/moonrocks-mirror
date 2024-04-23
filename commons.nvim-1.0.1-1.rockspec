local git_ref = 'bf8dabdec4c6b9fdc0002926e8bfe0a3d58cd4c7'
local modrev = '1.0.1'
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
  dir = 'commons.nvim-' .. 'bf8dabdec4c6b9fdc0002926e8bfe0a3d58cd4c7',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
