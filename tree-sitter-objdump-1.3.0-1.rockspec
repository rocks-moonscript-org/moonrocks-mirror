local git_ref = '1.3.0'
local modrev = '1.3.0'
local specrev = '1'

local repo_url = 'https://github.com/ColinKennedy/tree-sitter-objdump'

rockspec_format = '3.0'
package = 'tree-sitter-objdump'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for objdump',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ColinKennedy/tree-sitter-objdump',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-objdump-' .. '1.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "objdump",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
