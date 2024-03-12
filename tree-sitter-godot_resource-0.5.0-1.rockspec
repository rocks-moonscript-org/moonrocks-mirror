local git_ref = 'v0.5.0'
local modrev = '0.5.0'
local specrev = '1'

local repo_url = 'https://github.com/PrestonKnopp/tree-sitter-godot-resource'

rockspec_format = '3.0'
package = 'tree-sitter-godot_resource'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for godot_resource',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/PrestonKnopp/tree-sitter-godot-resource',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-godot-resource-' .. '0.5.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "godot_resource",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
