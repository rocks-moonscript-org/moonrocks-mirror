local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '-1'

local repo_url = 'https://github.com/1321tremblay/notes.nvim'

rockspec_format = '3.0'
package = 'notes.nvim'
version = modrev .. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/1321tremblay/notes.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'notes.nvim-' .. '0.1.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
