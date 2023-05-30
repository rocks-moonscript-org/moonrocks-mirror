local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '-1'

local repo_url = 'https://github.com/ellisonleao/glow.nvim'

rockspec_format = '3.0'
package = 'glow.nvim'
version = modrev .. specrev

description = {
  summary = 'A markdown preview directly in your neovim.',
  detailed = '',
  labels = { 'glow', 'golang', 'lua', 'markdown', 'neovim', 'neovim-plugin', 'nvim', 'preview', 'vim' } ,
  homepage = 'https://github.com/ellisonleao/glow.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'glow.nvim-' .. '0.2.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
