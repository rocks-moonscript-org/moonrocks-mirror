local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/indoorvivants/tree-sitter-smithy'

rockspec_format = '3.0'
package = 'tree-sitter-smithy'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for smithy',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/indoorvivants/tree-sitter-smithy',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-smithy-' .. '0.2.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "smithy",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
