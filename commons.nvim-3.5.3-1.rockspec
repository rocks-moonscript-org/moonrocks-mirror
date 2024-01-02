local git_ref = '69bc8fbaea48d49aeeefdef4e1731213ce8e66d1'
local modrev = '3.5.3'
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
  dir = 'commons.nvim-' .. '69bc8fbaea48d49aeeefdef4e1731213ce8e66d1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
