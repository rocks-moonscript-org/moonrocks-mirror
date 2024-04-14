local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/tree-sitter-norg-meta'

rockspec_format = '3.0'
package = 'tree-sitter-norg-meta'
version = modrev ..'-'.. specrev

description = {
  summary = 'Treesitter parser for Norg\'s `@document.meta` blocks.',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nvim-neorg/tree-sitter-norg-meta',
  license = 'MIT'
}

build_dependencies = {
  'luarocks-build-treesitter-parser >= 1.3.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-norg-meta-' .. '0.1.0',
}

build = {
  type = "treesitter-parser",
  lang = "norg_meta",
  sources = { "src/parser.c" },
}
