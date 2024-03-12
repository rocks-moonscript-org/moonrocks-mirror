local git_ref = 'v1.0.2'
local modrev = '1.0.2'
local specrev = '1'

local repo_url = 'https://github.com/camdencheek/tree-sitter-go-mod'

rockspec_format = '3.0'
package = 'tree-sitter-gomod'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gomod',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/camdencheek/tree-sitter-go-mod',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-go-mod-' .. '1.0.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "gomod",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
