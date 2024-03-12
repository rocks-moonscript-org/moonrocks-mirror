local git_ref = 'v0.0.3'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/sogaiu/tree-sitter-janet-simple'

rockspec_format = '3.0'
package = 'tree-sitter-janet_simple'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for janet_simple',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/sogaiu/tree-sitter-janet-simple',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-janet-simple-' .. '0.0.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "janet_simple",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
