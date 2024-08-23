local git_ref = '1aab69c95bd9d5e7c0e172ecbe5d29bcf5834612'
local modrev = '0.2.5'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/tree-sitter-norg'

rockspec_format = '3.0'
package = 'tree-sitter-norg'
version = modrev ..'-'.. specrev

description = {
  summary = 'The official tree-sitter parser for Norg documents.',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nvim-neorg/tree-sitter-norg',
  license = 'MIT'
}

build_dependencies = {
  'luarocks-build-treesitter-parser-cpp ~> 2',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-norg-' .. '1aab69c95bd9d5e7c0e172ecbe5d29bcf5834612',
}

build = {
  type = "treesitter-parser-cpp",
  lang = "norg",
  sources = { "src/parser.c", "src/scanner.cc" },
}
