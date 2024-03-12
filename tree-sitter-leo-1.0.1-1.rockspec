local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/r001/tree-sitter-leo'

rockspec_format = '3.0'
package = 'tree-sitter-leo'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for leo',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/r001/tree-sitter-leo',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-leo-' .. '1.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "leo",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
