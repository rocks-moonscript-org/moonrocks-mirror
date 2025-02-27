local git_ref = 'eaad3f64ea25a3c313b5a9b144e75e5d717d9c47'
local modrev = 'main'
local specrev = '-1'

local repo_url = 'https://github.com/NickStafford2/copy-diagnostics.nvim'

rockspec_format = '3.0'
package = 'copy-diagnostics.nvim'
version = modrev .. specrev

description = {
  summary = ' A very simple Neovim plugin for copying diagnostics from the current line to the clipboard. ',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/NickStafford2/copy-diagnostics.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'copy-diagnostics.nvim-' .. 'eaad3f64ea25a3c313b5a9b144e75e5d717d9c47',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
