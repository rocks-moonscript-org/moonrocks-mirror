local git_ref = '977b4aa4004726ed3d87b2437f543cef2153b8ea'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/tamton-aquib/duck.nvim'

rockspec_format = '3.0'
package = 'duck.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A duck that waddles arbitrarily in neovim.',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/tamton-aquib/duck.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'duck.nvim-' .. '977b4aa4004726ed3d87b2437f543cef2153b8ea',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
