local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/NTBBloodbath/logging.nvim'

rockspec_format = '3.0'
package = 'logging.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A very simple and asynchronous logging library for Neovim plugins',
  detailed = '',
  labels = { 'library', 'logging', 'neovim' } ,
  homepage = 'https://github.com/NTBBloodbath/logging.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'logging.nvim-' .. '1.1.0',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
