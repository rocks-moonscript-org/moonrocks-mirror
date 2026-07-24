local git_ref = '0.1.4'
local modrev = '0.1.4'
local specrev = '1'

local repo_url = 'https://github.com/neomutt/tree-sitter-muttrc'

rockspec_format = '3.0'
package = 'tree-sitter-muttrc'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/neomutt/tree-sitter-muttrc"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev ..'-'.. specrev

description = {
  summary = '🌲👨 muttrc grammar for tree-sitter',
  detailed = '',
  labels = { 'tree-sitter' },
  homepage = 'https://github.com/nvim-treesitter/nvim-treesitter/pull/6095',
  license = 'MIT',
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-muttrc-' .. '0.1.4',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  copy_directories = { "conf" },
  type = "treesitter-parser",
  lang = "muttrc",
  generate = true,
}
