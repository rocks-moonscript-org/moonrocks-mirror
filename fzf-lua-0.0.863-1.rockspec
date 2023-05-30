local git_ref = '8c54e028fac0540287987e4c103ebae15e8df895'
local modrev = '0.0.863'
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
  dir = 'fzf-lua-' .. '8c54e028fac0540287987e4c103ebae15e8df895',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
