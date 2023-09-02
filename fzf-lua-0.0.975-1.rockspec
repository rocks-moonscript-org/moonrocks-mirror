local git_ref = '2632033492cadfbda3a8678d3c3e65d9397e521d'
local modrev = '0.0.975'
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
  dir = 'fzf-lua-' .. '2632033492cadfbda3a8678d3c3e65d9397e521d',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
