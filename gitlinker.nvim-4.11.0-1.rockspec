local git_ref = '090a1667a573a7e23737ce008ba86b61f2d7ef84'
local modrev = '4.11.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/gitlinker.nvim'

rockspec_format = '3.0'
package = 'gitlinker.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Maintained fork of ruifm\'s gitlinker, refactored with bug fixes, ssh aliases, blame support and other improvements.',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin', 'plugin', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/gitlinker.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gitlinker.nvim-' .. '090a1667a573a7e23737ce008ba86b61f2d7ef84',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
