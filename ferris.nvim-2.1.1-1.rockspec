local git_ref = '2.1.1'
local modrev = '2.1.1'
local specrev = '1'

local repo_url = 'https://github.com/mrcjkb/ferris.nvim'

rockspec_format = '3.0'
package = 'ferris.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Supercharge your Rust experience in Neovim! A heavily modified fork of rust-tools.nvim',
  detailed = [[
This plugin automatically configures the rust-analyzer builtin LSP client
and integrates with other Rust tools. See the README's #features section
for more info.]],
  labels = { 'dap', 'debug-adapter-protocol', 'language-server-protocol', 'lsp', 'neovim', 'rust', 'rust-analyzer', 'rust-lang', 'rust-tools' } ,
  homepage = 'https://github.com/mrcjkb/ferris.nvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ferris.nvim-' .. '2.1.1',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin' } ,
}
