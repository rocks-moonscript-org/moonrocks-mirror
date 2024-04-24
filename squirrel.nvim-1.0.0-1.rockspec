local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/xiaoshihou514/squirrel.nvim'

rockspec_format = '3.0'
package = 'squirrel.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Jump around quickly using treesitter!',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/xiaoshihou514/squirrel.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'squirrel.nvim-' .. '1.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
