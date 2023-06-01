local git_ref = '0f953fd7a35d22e1409d5ce77bbacef9cf07e2cb'
local modrev = '0.0.877'
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
  dir = 'fzf-lua-' .. '0f953fd7a35d22e1409d5ce77bbacef9cf07e2cb',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
