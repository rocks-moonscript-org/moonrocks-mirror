local git_ref = '7bfab54de2e53038a0cf3ad949e776a3fa981144'
local modrev = '1.13.6'
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
  dir = 'colorbox.nvim-' .. '7bfab54de2e53038a0cf3ad949e776a3fa981144',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
