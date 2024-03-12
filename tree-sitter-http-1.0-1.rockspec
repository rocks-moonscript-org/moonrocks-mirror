local git_ref = 'v1.0'
local modrev = '1.0'
local specrev = '1'

local repo_url = 'https://github.com/rest-nvim/tree-sitter-http'

rockspec_format = '3.0'
package = 'tree-sitter-http'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for http',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/rest-nvim/tree-sitter-http',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-http-' .. '1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "http",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
