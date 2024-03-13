local git_ref = 'v0.61.2'
local modrev = '0.61.2'
local specrev = '1'

local repo_url = 'https://github.com/winglang/wing'

rockspec_format = '3.0'
package = 'tree-sitter-wing'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for wing',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/winglang/wing',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'wing-' .. '0.61.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "wing",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = true,
  generate_requires_npm = false,
  location = "libs/tree-sitter-wing",
}
