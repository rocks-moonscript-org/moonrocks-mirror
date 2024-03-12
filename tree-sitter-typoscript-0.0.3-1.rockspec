local git_ref = 'v0.0.3'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/Teddytrombone/tree-sitter-typoscript'

rockspec_format = '3.0'
package = 'tree-sitter-typoscript'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for typoscript',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Teddytrombone/tree-sitter-typoscript',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-typoscript-' .. '0.0.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "typoscript",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
