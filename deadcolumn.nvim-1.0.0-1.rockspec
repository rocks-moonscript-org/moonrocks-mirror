local git_ref = 'd3faae957d7ebeb443c25ecb1ad286fc4f74964b'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/Bekaboo/deadcolumn.nvim'

rockspec_format = '3.0'
package = 'deadcolumn.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim plugin that shows colorcolumn dynamically',
  detailed = [[
`deadcolumn.nvim` assists you to maintain a specific column width
in your code by gradually displaying the colorcolumn as you
approaches it.]],
  labels = { 'colorcolumn', 'lua', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin' } ,
  homepage = 'https://github.com/Bekaboo/deadcolumn.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'deadcolumn.nvim-' .. 'd3faae957d7ebeb443c25ecb1ad286fc4f74964b',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
