local git_ref = 'v0.1.2'
local modrev = '0.1.2'
local specrev = '1'

local repo_url = 'https://github.com/ObserverOfTime/tree-sitter-chatito'

rockspec_format = '3.0'
package = 'tree-sitter-chatito'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for chatito',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ObserverOfTime/tree-sitter-chatito',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-chatito-' .. '0.1.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "chatito",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
