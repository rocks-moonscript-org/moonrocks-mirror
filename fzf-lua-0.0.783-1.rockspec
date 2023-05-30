local git_ref = '15e9b1f1494dc1facaffe9543281d015c43b9eba'
local modrev = '0.0.783'
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
  dir = 'fzf-lua-' .. '15e9b1f1494dc1facaffe9543281d015c43b9eba',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
