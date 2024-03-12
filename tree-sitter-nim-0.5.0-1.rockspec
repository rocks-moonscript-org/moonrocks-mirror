local git_ref = '0.5.0'
local modrev = '0.5.0'
local specrev = '1'

local repo_url = 'https://github.com/alaviss/tree-sitter-nim'

rockspec_format = '3.0'
package = 'tree-sitter-nim'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for nim',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/alaviss/tree-sitter-nim',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nim-' .. '0.5.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "nim",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
