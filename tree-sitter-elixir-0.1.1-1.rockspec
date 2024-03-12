local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '1'

local repo_url = 'https://github.com/elixir-lang/tree-sitter-elixir'

rockspec_format = '3.0'
package = 'tree-sitter-elixir'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for elixir',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/elixir-lang/tree-sitter-elixir',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-elixir-' .. '0.1.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "elixir",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
