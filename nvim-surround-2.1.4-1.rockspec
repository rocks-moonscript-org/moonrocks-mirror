local git_ref = 'v2.1.4'
local modrev = '2.1.4'
local specrev = '1'

local repo_url = 'https://github.com/kylechui/nvim-surround'

rockspec_format = '3.0'
package = 'nvim-surround'
version = modrev ..'-'.. specrev

description = {
  summary = 'Add/change/delete surrounding delimiter pairs with ease.',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin', 'nvim', 'surround', 'ucla-opensource' } ,
  homepage = 'https://github.com/kylechui/nvim-surround',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-surround-' .. '2.1.4',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'queries' } ,
}
