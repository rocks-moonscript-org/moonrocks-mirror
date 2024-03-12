local git_ref = 'v0.3.1'
local modrev = '0.3.1'
local specrev = '1'

local repo_url = 'https://github.com/theHamsta/tree-sitter-commonlisp'

rockspec_format = '3.0'
package = 'tree-sitter-commonlisp'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for commonlisp',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/theHamsta/tree-sitter-commonlisp',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-commonlisp-' .. '0.3.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "commonlisp",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
