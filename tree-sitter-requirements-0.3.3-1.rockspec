local git_ref = 'v0.3.3'
local modrev = '0.3.3'
local specrev = '1'

local repo_url = 'https://github.com/ObserverOfTime/tree-sitter-requirements'

rockspec_format = '3.0'
package = 'tree-sitter-requirements'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for requirements',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ObserverOfTime/tree-sitter-requirements',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-requirements-' .. '0.3.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "requirements",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
