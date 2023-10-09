local git_ref = '6b5e8fa9bad2341a39eb1af19522260182a791f6'
local modrev = 'master'
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
  dir = 'image.nvim-' .. '6b5e8fa9bad2341a39eb1af19522260182a791f6',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
