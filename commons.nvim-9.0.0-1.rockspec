local git_ref = '396fcae84bd1054b9e3db4262a7f768d6c18ecc4'
local modrev = '9.0.0'
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
  dir = 'commons.nvim-' .. '396fcae84bd1054b9e3db4262a7f768d6c18ecc4',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
