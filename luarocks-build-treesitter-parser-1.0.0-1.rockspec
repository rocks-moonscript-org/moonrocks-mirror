local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/luarocks-build-treesitter-parser'

rockspec_format = '3.0'
package = 'luarocks-build-treesitter-parser'
version = modrev ..'-'.. specrev

description = {
  summary = 'A luarocks build backend for tree-sitter parsers.',
  detailed = '',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nvim-neorocks/luarocks-build-treesitter-parser',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'luarocks-build-treesitter-parser-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
