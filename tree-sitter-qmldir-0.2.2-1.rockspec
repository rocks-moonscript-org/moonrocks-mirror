local git_ref = '0.2.2'
local modrev = '0.2.2'
local specrev = '1'

local repo_url = 'https://github.com/Decodetalkers/tree-sitter-qmldir'

rockspec_format = '3.0'
package = 'tree-sitter-qmldir'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for qmldir',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Decodetalkers/tree-sitter-qmldir',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-qmldir-' .. '0.2.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "qmldir",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
