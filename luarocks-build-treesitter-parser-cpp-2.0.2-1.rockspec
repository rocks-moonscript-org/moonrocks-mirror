local git_ref = 'v2.0.2'
local modrev = '2.0.2'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/luarocks-build-treesitter-parser-cpp'

rockspec_format = '3.0'
package = 'luarocks-build-treesitter-parser-cpp'
version = modrev ..'-'.. specrev

description = {
  summary = 'A luarocks build backend for tree-sitter parsers written in C++.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/nvim-neorocks/luarocks-build-treesitter-parser-cpp',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'luafilesystem ~> 1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'luarocks-build-treesitter-parser-cpp-' .. '2.0.2',
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
