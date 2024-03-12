local git_ref = 'v0.20.1'
local modrev = '0.20.1'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-java'

rockspec_format = '3.0'
package = 'tree-sitter-java'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for java',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-java',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-java-' .. '0.20.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "java",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
