local git_ref = 'b812ff782ae83c504e6d3737cc3da9e68968efa4'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/NStefan002/2048.nvim'

rockspec_format = '3.0'
package = '2048.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Play 2048 inside your favourite editor',
  detailed = '',
  labels = { '2048-clone', '2048-game', 'game', 'lua', 'neovim', 'neovim-plugin', 'plugin' } ,
  homepage = 'https://github.com/NStefan002/2048.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = '2048.nvim-' .. 'b812ff782ae83c504e6d3737cc3da9e68968efa4',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
