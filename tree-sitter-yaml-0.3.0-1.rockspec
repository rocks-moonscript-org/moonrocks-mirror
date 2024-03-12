local git_ref = 'v0.3.0'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/ikatyang/tree-sitter-yaml'

rockspec_format = '3.0'
package = 'tree-sitter-yaml'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for yaml',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ikatyang/tree-sitter-yaml',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-yaml-' .. '0.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "yaml",
  sources = { "src/parser.c", "src/scanner.cc" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
