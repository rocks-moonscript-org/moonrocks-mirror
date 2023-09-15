local git_ref = '1e5347e901e53f000a0272d9093765d00a00d4dd'
local modrev = '0.0.990'
local specrev = '-1'

local repo_url = 'https://github.com/ibhagwan/fzf-lua'

rockspec_format = '3.0'
package = 'fzf-lua'
version = modrev .. specrev

description = {
  summary = 'Improved fzf.vim written in lua',
  detailed = '',
  labels = { 'fzf', 'lua', 'neovim', 'neovim-plugin', 'nvim' } ,
  homepage = 'https://github.com/ibhagwan/fzf-lua',
  license = 'AGPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzf-lua-' .. '1e5347e901e53f000a0272d9093765d00a00d4dd',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
