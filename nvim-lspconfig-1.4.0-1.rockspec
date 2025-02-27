local git_ref = 'v1.4.0'
local modrev = '1.4.0'
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
  license = 'Apache/2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-lspconfig-' .. '1.4.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
