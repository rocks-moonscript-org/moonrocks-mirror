local git_ref = 'v0.5.0'
local modrev = '0.5.0'
local specrev = '1'

local repo_url = 'https://github.com/FoamScience/tree-sitter-foam'

rockspec_format = '3.0'
package = 'tree-sitter-foam'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for foam',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/FoamScience/tree-sitter-foam',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-foam-' .. '0.5.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "foam",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
