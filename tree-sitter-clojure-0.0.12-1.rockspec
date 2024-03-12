local git_ref = 'v0.0.12'
local modrev = '0.0.12'
local specrev = '1'

local repo_url = 'https://github.com/sogaiu/tree-sitter-clojure'

rockspec_format = '3.0'
package = 'tree-sitter-clojure'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for clojure',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/sogaiu/tree-sitter-clojure',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-clojure-' .. '0.0.12',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "clojure",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
