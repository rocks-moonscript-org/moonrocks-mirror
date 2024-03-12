local git_ref = 'v0.3.0'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/6cdh/tree-sitter-racket'

rockspec_format = '3.0'
package = 'tree-sitter-racket'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for racket',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/6cdh/tree-sitter-racket',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-racket-' .. '0.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "racket",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
