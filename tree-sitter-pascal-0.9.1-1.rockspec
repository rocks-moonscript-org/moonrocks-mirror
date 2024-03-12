local git_ref = 'v0.9.1'
local modrev = '0.9.1'
local specrev = '1'

local repo_url = 'https://github.com/Isopod/tree-sitter-pascal'

rockspec_format = '3.0'
package = 'tree-sitter-pascal'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for pascal',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Isopod/tree-sitter-pascal',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-pascal-' .. '0.9.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "pascal",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
