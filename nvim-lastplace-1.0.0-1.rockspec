local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/mrcjkb/nvim-lastplace'

rockspec_format = '3.0'
package = 'nvim-lastplace'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin that intelligently reopens files at your last edit position (a Lua rewrite of vim-lastplace)',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mrcjkb/nvim-lastplace',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-lastplace-' .. '1.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
