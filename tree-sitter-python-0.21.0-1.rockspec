local git_ref = 'v0.21.0'
local modrev = '0.21.0'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-python'

rockspec_format = '3.0'
package = 'tree-sitter-python'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for python',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-python',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-python-' .. '0.21.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "python",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
