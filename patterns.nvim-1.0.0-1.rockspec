local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/patterns.nvim'

rockspec_format = '3.0'
package = 'patterns.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A simple pattern viewer for Neovim with support for Lua patterns & regex.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/patterns.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-regex' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'patterns.nvim-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
