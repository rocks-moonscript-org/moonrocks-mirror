local git_ref = 'd4c2e3f32da453afb55e1becbe4b92357576db9b'
local modrev = '0.0.785'
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
  dir = 'fzf-lua-' .. 'd4c2e3f32da453afb55e1becbe4b92357576db9b',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
