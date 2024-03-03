local git_ref = '610179f7f12db3d08540b6cc61434db2eaecbcff'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/folke/tokyonight.nvim'

rockspec_format = '3.0'
package = 'tokyonight.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/tokyonight.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tokyonight.nvim-' .. '610179f7f12db3d08540b6cc61434db2eaecbcff',
}

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors', 'doc' } ,
}
