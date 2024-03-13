local git_ref = 'v0.0.4'
local modrev = '0.0.4'
local specrev = '1'

local repo_url = 'https://github.com/euclidianAce/tree-sitter-teal'

rockspec_format = '3.0'
package = 'tree-sitter-teal'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for teal',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/euclidianAce/tree-sitter-teal',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-teal-' .. '0.0.4',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "teal",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = true,
  generate_requires_npm = false,
  location = nil,
}
