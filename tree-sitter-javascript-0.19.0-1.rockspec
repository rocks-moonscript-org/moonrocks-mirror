local git_ref = 'v0.19.0'
local modrev = '0.19.0'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-javascript'

rockspec_format = '3.0'
package = 'tree-sitter-javascript'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for javascript',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-javascript',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-javascript-' .. '0.19.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "javascript",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
