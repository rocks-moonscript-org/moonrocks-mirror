local git_ref = 'f9d3b2dad735fd2b9d6a47fb1ee31d9411ab0a30'
local modrev = '0.0.872'
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
  dir = 'fzf-lua-' .. 'f9d3b2dad735fd2b9d6a47fb1ee31d9411ab0a30',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
