local git_ref = 'a553b614f1b89fdbf645efef977f4b7aa0fa6c19'
local modrev = '0.0.794'
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
  dir = 'fzf-lua-' .. 'a553b614f1b89fdbf645efef977f4b7aa0fa6c19',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
