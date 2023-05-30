local git_ref = 'c56cd5c9e84e724ed6c707a4a7fc71ccfb0c6c1d'
local modrev = '0.0.858'
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
  dir = 'fzf-lua-' .. 'c56cd5c9e84e724ed6c707a4a7fc71ccfb0c6c1d',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
