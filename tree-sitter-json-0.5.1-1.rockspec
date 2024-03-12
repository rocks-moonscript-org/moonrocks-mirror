local git_ref = 'v0.5.1'
local modrev = '0.5.1'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-json'

rockspec_format = '3.0'
package = 'tree-sitter-json'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for json',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-json',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-json-' .. '0.5.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "json",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
