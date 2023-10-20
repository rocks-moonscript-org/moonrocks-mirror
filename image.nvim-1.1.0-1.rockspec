local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/3rd/image.nvim'

rockspec_format = '3.0'
package = 'image.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🖼️ Bringing images to Neovim.',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/3rd/image.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'image.nvim-' .. '1.1.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
