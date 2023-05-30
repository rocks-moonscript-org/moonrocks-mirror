local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '-1'

local repo_url = 'https://github.com/gennaro-tedesco/nvim-peekup'

rockspec_format = '3.0'
package = 'nvim-peekup'
version = modrev .. specrev

description = {
  summary = '👀 dynamically interact with vim registers',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/gennaro-tedesco/nvim-peekup',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-peekup-' .. '0.1.1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
