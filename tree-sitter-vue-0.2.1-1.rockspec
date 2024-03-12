local git_ref = 'v0.2.1'
local modrev = '0.2.1'
local specrev = '1'

local repo_url = 'https://github.com/ikatyang/tree-sitter-vue'

rockspec_format = '3.0'
package = 'tree-sitter-vue'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for vue',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ikatyang/tree-sitter-vue',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-vue-' .. '0.2.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "vue",
  sources = { "src/parser.c", "src/scanner.cc" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
