local git_ref = '0.1.2'
local modrev = '0.1.2'
local specrev = '1'

local repo_url = 'https://github.com/yuja/tree-sitter-qmljs'

rockspec_format = '3.0'
package = 'tree-sitter-qmljs'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for qmljs',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/yuja/tree-sitter-qmljs',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-qmljs-' .. '0.1.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "qmljs",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
