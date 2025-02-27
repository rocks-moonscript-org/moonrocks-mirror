local git_ref = 'v0.9.2'
local modrev = '0.9.2'
local specrev = '-1'

local repo_url = 'https://github.com/brianhuster/live-preview.nvim'

rockspec_format = '3.0'
package = 'live-preview.nvim'
version = modrev .. specrev

description = {
  summary = 'A Live Preview Plugin for Neovim that allows you to view Markdown, HTML (along with CSS, JavaScript), AsciiDoc files in a web browser with live updates.',
  detailed = '',
  labels = { 'asciidoc', 'asciidoctor', 'live-preview', 'live-server', 'lua', 'markdown', 'markdown-it', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin' } ,
  homepage = 'https://github.com/brianhuster/live-preview.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'live-preview.nvim-' .. '0.9.2',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
