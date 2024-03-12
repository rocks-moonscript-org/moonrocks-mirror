local git_ref = 'v0.4.0'
local modrev = '0.4.0'
local specrev = '1'

local repo_url = 'https://github.com/ObserverOfTime/tree-sitter-pymanifest'

rockspec_format = '3.0'
package = 'tree-sitter-pymanifest'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for pymanifest',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ObserverOfTime/tree-sitter-pymanifest',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-pymanifest-' .. '0.4.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "pymanifest",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
