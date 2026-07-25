local git_ref = 'v0.3.1'
local modrev = '0.3.1'
local specrev = '1'

local repo_url = 'https://github.com/mistweaverco/tree-sitter-kulala-http'

rockspec_format = '3.0'
package = 'tree-sitter-kulala_http'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tree-sitter grammar for http (kulala-flavour).',
  labels = { 'neovim', 'tree-sitter', 'kulala' } ,
  homepage = 'https://kulala.app',
  license = 'MIT'
}

build_dependencies = {
  'luarocks-build-treesitter-parser ~> 6',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-kulala-http-' .. '0.3.1',
}

build = {
  type = "treesitter-parser",
  lang = "kulala_http",
  copy_directories = { "queries" },
}
