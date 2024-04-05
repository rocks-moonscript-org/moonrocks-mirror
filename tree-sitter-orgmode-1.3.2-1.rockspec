local git_ref = 'v1.3.2'
local modrev = '1.3.2'
local specrev = '1'

local repo_url = 'https://github.com/nvim-orgmode/tree-sitter-org'

rockspec_format = '3.0'
package = 'tree-sitter-orgmode'
version = modrev ..'-'.. specrev

description = {
  summary = 'A fork of tree-sitter-org, for use with the orgmode Neovim plugin',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nvim-orgmode/tree-sitter-org',
  license = 'MIT'
}

build_dependencies = {
  'luarocks-build-treesitter-parser >= 1.3.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-org-' .. '1.3.2',
}

build = {
  type = "treesitter-parser",
  lang = "org",
  sources = { "src/parser.c", "src/scanner.c" },
  copy_directories = { "queries" },
}
