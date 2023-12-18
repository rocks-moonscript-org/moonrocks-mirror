local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/aikooo7/funnyfiles.nvim'

rockspec_format = '3.0'
package = 'funnyfiles.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'This plugin is a way of creating/deleting files/folders without needing to open a file explorer.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/aikooo7/funnyfiles.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'funnyfiles.nvim-' .. '1.0.1',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
