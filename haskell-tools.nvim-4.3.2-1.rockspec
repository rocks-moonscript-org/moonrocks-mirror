local git_ref = 'v4.3.2'
local modrev = '4.3.2'
local specrev = '1'

local repo_url = 'https://github.com/mrcjkb/haskell-tools.nvim'

rockspec_format = '3.0'
package = 'haskell-tools.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = ' 🦥 Supercharge your Haskell experience in neovim!',
  detailed = [[
This plugin automatically configures the haskell-language-server builtin LSP client
and integrates with other Haskell tools. See the README's #features section
for more info.]],
  labels = { 'dap', 'debug-adapter-protocol', 'fast-tags', 'haskell', 'hoogle', 'language-server', 'language-server-protocol', 'lsp', 'lsp-client', 'lua', 'neovim', 'neovim-plugin', 'nvim', 'plugin', 'repl', 'tagfunc', 'telescope', 'vim' } ,
  homepage = 'https://github.com/mrcjkb/haskell-tools.nvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'haskell-tools.nvim-' .. '4.3.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin' } ,
}
