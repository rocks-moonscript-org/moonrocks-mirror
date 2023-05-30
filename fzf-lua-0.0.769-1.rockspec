local git_ref = '2b3bd35342bbc6bfd3b69215a4f8cf3f9d0eb513'
local modrev = '0.0.769'
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
  dir = 'fzf-lua-' .. '2b3bd35342bbc6bfd3b69215a4f8cf3f9d0eb513',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
