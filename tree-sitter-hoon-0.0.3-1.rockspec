local git_ref = '0.0.3'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/urbit-pilled/tree-sitter-hoon'

rockspec_format = '3.0'
package = 'tree-sitter-hoon'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for hoon',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/urbit-pilled/tree-sitter-hoon',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-hoon-' .. '0.0.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "hoon",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
