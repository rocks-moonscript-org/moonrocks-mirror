local git_ref = '3.7.0'
local modrev = '3.7.0'
local specrev = '1'

local repo_url = 'https://github.com/mrcjkb/rustaceanvim'

rockspec_format = '3.0'
package = 'rustaceanvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Supercharge your Rust experience in Neovim! A heavily modified fork of rust-tools.nvim',
  detailed = [[
This plugin automatically configures the rust-analyzer builtin LSP client
and integrates with other Rust tools. See the README's #features section
for more info.]],
  labels = { 'dap', 'debug-adapter-protocol', 'language-server-protocol', 'lsp', 'neovim', 'nvim', 'plugin', 'rust', 'rust-analyzer', 'rust-lang', 'rust-tools' } ,
  homepage = 'https://github.com/mrcjkb/rustaceanvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rustaceanvim-' .. '3.7.0',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin' } ,
}
