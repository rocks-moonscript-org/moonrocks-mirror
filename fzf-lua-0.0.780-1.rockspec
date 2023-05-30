local git_ref = '2f3df3891e26f8dd2d758bb5ab7267c1ee6dcf4c'
local modrev = '0.0.780'
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
  dir = 'fzf-lua-' .. '2f3df3891e26f8dd2d758bb5ab7267c1ee6dcf4c',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
