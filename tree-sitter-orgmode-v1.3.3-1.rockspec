local git_ref = '97bbd611dbab6c7fc1d9a262094864f20bea4674'
local modrev = 'V1.3.3'
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
  dir = 'tree-sitter-org-' .. '97bbd611dbab6c7fc1d9a262094864f20bea4674',
}

build = {
  type = "treesitter-parser",
  lang = "org",
  sources = { "src/parser.c", "src/scanner.c" },
  copy_directories = { "queries" },
}
