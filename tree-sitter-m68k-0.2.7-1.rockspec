local git_ref = 'v0.2.7'
local modrev = '0.2.7'
local specrev = '1'

local repo_url = 'https://github.com/grahambates/tree-sitter-m68k'

rockspec_format = '3.0'
package = 'tree-sitter-m68k'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for m68k',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/grahambates/tree-sitter-m68k',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-m68k-' .. '0.2.7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "m68k",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
