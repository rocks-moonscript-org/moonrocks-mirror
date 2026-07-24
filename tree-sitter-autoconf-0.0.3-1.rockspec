local git_ref = '0.0.3'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/tree-sitter-autoconf'

rockspec_format = '3.0'
package = 'tree-sitter-autoconf'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/Freed-Wu/tree-sitter-autoconf"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev ..'-'.. specrev

description = {
  summary = '🌲👨 configure.ac (autoconf) grammar for tree-sitter',
  detailed = '',
  labels = { 'tree-sitter' },
  homepage = 'https://github.com/Freed-Wu/tree-sitter-autoconf',
  license = 'MIT',
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-autoconf-' .. '0.0.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "treesitter-parser",
  lang = "autoconf",
  generate = true,
}
