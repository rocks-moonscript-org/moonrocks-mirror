local git_ref = '0.0.10'
local modrev = '0.0.10'
local specrev = '1'

local repo_url = 'https://github.com/aheber/tree-sitter-sfapex'

rockspec_format = '3.0'
package = 'tree-sitter-sosl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for sosl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/aheber/tree-sitter-sfapex',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-sfapex-' .. '0.0.10',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "sosl",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = "sosl",
}
