local git_ref = 'v0.17.0'
local modrev = '0.17.0'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-ruby'

rockspec_format = '3.0'
package = 'tree-sitter-ruby'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ruby',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-ruby',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ruby-' .. '0.17.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ruby",
  sources = { "src/parser.c", "src/scanner.cc" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
