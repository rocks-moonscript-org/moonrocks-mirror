local git_ref = 'v1.1.1'
local modrev = '1.1.1'
local specrev = '1'

local repo_url = 'https://github.com/justinmk/tree-sitter-ini'

rockspec_format = '3.0'
package = 'tree-sitter-ini'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ini',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/justinmk/tree-sitter-ini',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ini-' .. '1.1.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ini",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
