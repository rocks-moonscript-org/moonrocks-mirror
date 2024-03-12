local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/glapa-grossklag/tree-sitter-elsa'

rockspec_format = '3.0'
package = 'tree-sitter-elsa'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for elsa',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/glapa-grossklag/tree-sitter-elsa',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-elsa-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "elsa",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
