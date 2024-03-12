local git_ref = '0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/BonaBeavis/tree-sitter-turtle'

rockspec_format = '3.0'
package = 'tree-sitter-turtle'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for turtle',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/BonaBeavis/tree-sitter-turtle',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-turtle-' .. '0.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "turtle",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
