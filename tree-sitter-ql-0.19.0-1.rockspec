local git_ref = 'v0.19.0'
local modrev = '0.19.0'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-ql'

rockspec_format = '3.0'
package = 'tree-sitter-ql'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ql',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-ql',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ql-' .. '0.19.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ql",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
