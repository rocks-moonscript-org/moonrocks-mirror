local git_ref = '3f7d4a74bd456e747a1278ea1672b26116e0824d'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/nacro90/numb.nvim'

rockspec_format = '3.0'
package = 'numb.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Peek lines just when you intend',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nacro90/numb.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'numb.nvim-' .. '3f7d4a74bd456e747a1278ea1672b26116e0824d',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
