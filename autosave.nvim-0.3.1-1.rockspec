local git_ref = 'v0.3.1'
local modrev = '0.3.1'
local specrev = '-1'

local repo_url = 'https://github.com/brianhuster/autosave.nvim'

rockspec_format = '3.0'
package = 'autosave.nvim'
version = modrev .. specrev

description = {
  summary = 'A simple Neovim and Vim plugin for autosaving as you type',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/brianhuster/autosave.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'autosave.nvim-' .. '0.3.1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
