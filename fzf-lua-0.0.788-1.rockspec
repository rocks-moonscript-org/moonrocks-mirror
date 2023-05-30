local git_ref = '78e44ff485bd02cce53454780a405e5b789bcc1c'
local modrev = '0.0.788'
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
  dir = 'fzf-lua-' .. '78e44ff485bd02cce53454780a405e5b789bcc1c',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
