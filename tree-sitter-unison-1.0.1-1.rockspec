local git_ref = '1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/kylegoetz/tree-sitter-unison'

rockspec_format = '3.0'
package = 'tree-sitter-unison'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for unison',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/kylegoetz/tree-sitter-unison',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-unison-' .. '1.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "unison",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = true,
  generate_requires_npm = false,
  location = nil,
}
