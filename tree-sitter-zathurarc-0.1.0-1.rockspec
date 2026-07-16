local git_ref = '0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/tree-sitter-zathurarc'

rockspec_format = '3.0'
package = 'tree-sitter-zathurarc'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/Freed-Wu/tree-sitter-zathurarc"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev ..'-'.. specrev

description = {
  summary = '🌲👨 zathurarc grammar for tree-sitter',
  detailed = '',
  labels = { 'tree-sitter' },
  homepage = 'https://github.com/nvim-treesitter/nvim-treesitter/pull/5948',
  license = 'MIT',
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-zathurarc-' .. '0.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "treesitter-parser",
  lang = "zathurarc",
  generate = true,
}
