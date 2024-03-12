local git_ref = 'v0.0.2'
local modrev = '0.0.2'
local specrev = '1'

local repo_url = 'https://github.com/amaanq/tree-sitter-bass'

rockspec_format = '3.0'
package = 'tree-sitter-bass'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for bass',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/amaanq/tree-sitter-bass',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-bass-' .. '0.0.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "bass",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
