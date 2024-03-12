local git_ref = 'v0.2.8b'
local modrev = '0.2.8b'
local specrev = '1'

local repo_url = 'https://github.com/madskjeldgaard/tree-sitter-supercollider'

rockspec_format = '3.0'
package = 'tree-sitter-supercollider'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for supercollider',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/madskjeldgaard/tree-sitter-supercollider',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-supercollider-' .. '0.2.8b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "supercollider",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
