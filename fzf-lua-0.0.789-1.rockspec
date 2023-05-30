local git_ref = '592ab9a26176a7f9ebd43faf91d1f5d066e0aa07'
local modrev = '0.0.789'
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
  dir = 'fzf-lua-' .. '592ab9a26176a7f9ebd43faf91d1f5d066e0aa07',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
