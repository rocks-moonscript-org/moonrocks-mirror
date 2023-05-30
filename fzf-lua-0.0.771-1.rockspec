local git_ref = '9a98006e62bda1a38f6c09c3d3bc97e723eca52b'
local modrev = '0.0.771'
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
  dir = 'fzf-lua-' .. '9a98006e62bda1a38f6c09c3d3bc97e723eca52b',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
