local git_ref = 'bd0334ede8d35ec0395ac793b77f0ba810f1f7a8'
local modrev = '0.0.778'
local specrev = '-1'

local repo_url = 'https://github.com/ibhagwan/fzf-lua'

rockspec_format = '3.0'
package = 'fzf-lua'
version = modrev .. specrev

description = {
  summary = 'Improved fzf.vim written in lua',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/ibhagwan/fzf-lua',
  license = 'AGPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzf-lua-' .. 'bd0334ede8d35ec0395ac793b77f0ba810f1f7a8',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
