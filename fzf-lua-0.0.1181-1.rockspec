local git_ref = 'c0ff7068b331f58619c2eb74624ede3e549ea7ea'
local modrev = '0.0.1181'
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
  dir = 'fzf-lua-' .. 'c0ff7068b331f58619c2eb74624ede3e549ea7ea',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
