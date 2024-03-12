local git_ref = 'v0.6.0'
local modrev = '0.6.0'
local specrev = '1'

local repo_url = 'https://github.com/connorlay/tree-sitter-heex'

rockspec_format = '3.0'
package = 'tree-sitter-heex'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for heex',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/connorlay/tree-sitter-heex',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-heex-' .. '0.6.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "heex",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
