local git_ref = 'v0.2.1'
local modrev = '0.2.1'
local specrev = '1'

local repo_url = 'https://github.com/MDeiml/tree-sitter-markdown'

rockspec_format = '3.0'
package = 'tree-sitter-markdown'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for markdown',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/MDeiml/tree-sitter-markdown',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-markdown-' .. '0.2.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "treesitter-parser",
  lang = "markdown",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = "tree-sitter-markdown",
}
