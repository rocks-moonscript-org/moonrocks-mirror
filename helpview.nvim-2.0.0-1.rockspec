local git_ref = 'v2.0.0'
local modrev = '2.0.0'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/helpview.nvim'

rockspec_format = '3.0'
package = 'helpview.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Decorations for vimdoc/help files in Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/helpview.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-vimdoc' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'helpview.nvim-' .. '2.0.0',
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
