local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '-1'

local repo_url = 'https://github.com/cultab/command.nvim'

rockspec_format = '3.0'
package = 'command.nvim'
version = modrev .. specrev

description = {
  summary = 'command runner slash text pipe to multiplexed panes',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/cultab/command.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'command.nvim-' .. '0.1.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
