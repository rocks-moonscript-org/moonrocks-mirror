local git_ref = 'bd5f54bc66cb63cdf6378c76eb3914ac677cd123'
local modrev = '0.0.906'
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
  dir = 'fzf-lua-' .. 'bd5f54bc66cb63cdf6378c76eb3914ac677cd123',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
