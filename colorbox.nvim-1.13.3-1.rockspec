local git_ref = '66c0f94270e97d9930ff101f397200178b555f4f'
local modrev = '1.13.3'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/colorbox.nvim'

rockspec_format = '3.0'
package = 'colorbox.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Load all the ultra colorschemes into your Neovim player!',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/linrongbin16/colorbox.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorbox.nvim-' .. '66c0f94270e97d9930ff101f397200178b555f4f',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
