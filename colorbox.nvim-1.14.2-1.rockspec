local git_ref = '22a28585d1aabb25572e4ff8fc250b35a0ce551f'
local modrev = '1.14.2'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/colorbox.nvim'

rockspec_format = '3.0'
package = 'colorbox.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Load all the ultra colorschemes into your Neovim player!',
  detailed = '',
  labels = { 'vim', 'neovim' } ,
  homepage = 'https://github.com/linrongbin16/colorbox.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorbox.nvim-' .. '22a28585d1aabb25572e4ff8fc250b35a0ce551f',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
