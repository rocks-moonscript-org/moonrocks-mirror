local git_ref = 'v0.0.1'
local modrev = '0.0.1'
local specrev = '-1'

local repo_url = 'https://github.com/xiantang/darcula-dark.nvim'

rockspec_format = '3.0'
package = 'darcula-dark.nvim'
version = modrev .. specrev

description = {
  summary = 'Jetbrains Darcula Dark for Neovim.',
  detailed = '',
  labels = { 'colorscheme', 'darcula', 'dracula', 'neovim', 'vim' } ,
  homepage = 'https://github.com/xiantang/darcula-dark.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'darcula-dark.nvim-' .. '0.0.1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
