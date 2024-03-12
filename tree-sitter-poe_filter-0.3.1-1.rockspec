local git_ref = 'v0.3.1'
local modrev = '0.3.1'
local specrev = '1'

local repo_url = 'https://github.com/ObserverOfTime/tree-sitter-poe-filter'

rockspec_format = '3.0'
package = 'tree-sitter-poe_filter'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for poe_filter',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ObserverOfTime/tree-sitter-poe-filter',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-poe-filter-' .. '0.3.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "poe_filter",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
