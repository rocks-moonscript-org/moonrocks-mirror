local git_ref = 'a1d6608b6ba5309f9abda776398c97fe8ed26c11'
local modrev = '0.0.1172'
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
  dir = 'fzf-lua-' .. 'a1d6608b6ba5309f9abda776398c97fe8ed26c11',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
