local git_ref = 'v1.8.2'
local modrev = '1.8.2'
local specrev = '1'

local repo_url = 'https://github.com/PrestonKnopp/tree-sitter-gdscript'

rockspec_format = '3.0'
package = 'tree-sitter-gdscript'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gdscript',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/PrestonKnopp/tree-sitter-gdscript',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-gdscript-' .. '1.8.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "gdscript",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
