local git_ref = 'b58799714513083bd646f0b716e29f224ebba48e'
local modrev = '0.0.897'
local specrev = '-1'

local repo_url = 'https://github.com/ibhagwan/fzf-lua'

rockspec_format = '3.0'
package = 'fzf-lua'
version = modrev .. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/ibhagwan/fzf-lua',
  license = 'AGPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzf-lua-' .. 'b58799714513083bd646f0b716e29f224ebba48e',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
