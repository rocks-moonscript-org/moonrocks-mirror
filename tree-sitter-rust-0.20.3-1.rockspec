local git_ref = 'v0.20.3'
local modrev = '0.20.3'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-rust'

rockspec_format = '3.0'
package = 'tree-sitter-rust'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for rust',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-rust',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-rust-' .. '0.20.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "rust",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
