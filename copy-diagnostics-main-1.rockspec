local git_ref = 'a28c07f66405e5ee7053e46dea4d4a9eddd1a080'
local modrev = 'main'
local specrev = '-1'

local repo_url = 'https://github.com/NickStafford2/copy-diagnostics'

rockspec_format = '3.0'
package = 'copy-diagnostics'
version = modrev .. specrev

description = {
  summary = ' A very simple Neovim plugin for copying diagnostics from the current line to the clipboard. ',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/NickStafford2/copy-diagnostics',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'copy-diagnostics-' .. 'a28c07f66405e5ee7053e46dea4d4a9eddd1a080',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
