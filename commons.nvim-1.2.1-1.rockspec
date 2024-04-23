local git_ref = '58384761b15b3a3d4522ad9b14f93b58bde44703'
local modrev = '1.2.1'
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
  dir = 'commons.nvim-' .. '58384761b15b3a3d4522ad9b14f93b58bde44703',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
