local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/bars-N-lines.nvim'

rockspec_format = '3.0'
package = 'bars-n-lines.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'An example bars & lines plugin for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/bars-N-lines.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-markdown', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'bars-N-lines.nvim-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
