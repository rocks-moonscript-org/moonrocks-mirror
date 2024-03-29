local git_ref = 'v0.0.3'
local modrev = '0.0.3'
local specrev = '-1'

local repo_url = 'https://github.com/luxluth/oz.nvim'

rockspec_format = '3.0'
package = 'oz.nvim'
version = modrev .. specrev

description = {
  summary = 'A plugin for the oz progrmming language',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/luxluth/oz.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'oz.nvim-' .. '0.0.3',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
