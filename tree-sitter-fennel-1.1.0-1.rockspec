local git_ref = '1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/travonted/tree-sitter-fennel'

rockspec_format = '3.0'
package = 'tree-sitter-fennel'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for fennel',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/travonted/tree-sitter-fennel',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-fennel-' .. '1.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "fennel",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
