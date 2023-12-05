local git_ref = 'v0.1.7'
local modrev = '0.1.7'
local specrev = '1'

local repo_url = 'https://github.com/neovim/nvim-lspconfig'

rockspec_format = '3.0'
package = 'nvim-lspconfig'
version = modrev ..'-'.. specrev

description = {
  summary = 'A collection of common configurations for Neovim\'s built-in language server client.',
  detailed = [[
This plugin allows for declaratively configuring,
launching, and initializing language servers you have installed on your system.
Language server configurations are community-maintained.]],
  labels = { 'language-server', 'language-server-protocol', 'lsp', 'neovim', 'nvim', 'plugin', 'vim' } ,
  homepage = 'https://github.com/neovim/nvim-lspconfig',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-lspconfig-' .. '0.1.7',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
