local git_ref = 'v1.4.0'
local modrev = '1.4.0'
local specrev = '1'

local repo_url = 'https://github.com/victorhqc/tree-sitter-prisma'

rockspec_format = '3.0'
package = 'tree-sitter-prisma'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for prisma',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/victorhqc/tree-sitter-prisma',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-prisma-' .. '1.4.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "prisma",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
