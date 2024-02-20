local git_ref = 'v2.6.1'
local modrev = '2.6.1'
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
  dir = '2048.nvim-' .. '2.6.1',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
