local git_ref = '1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/mrcjkb/haskell-snippets.nvim'

rockspec_format = '3.0'
package = 'haskell-snippets.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'My collection of Haskell snippets for LuaSnip. Powered by tree-sitter and LSP. ',
  detailed = '',
  labels = { 'haskell', 'luasnip', 'neovim', 'neovim-plugin', 'snippets', 'vim' } ,
  homepage = 'https://github.com/mrcjkb/haskell-snippets.nvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'haskell-snippets.nvim-' .. '1.1.0',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
