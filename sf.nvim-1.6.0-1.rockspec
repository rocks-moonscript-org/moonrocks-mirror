local git_ref = 'v1.6.0'
local modrev = '1.6.0'
local specrev = '1'

local repo_url = 'https://github.com/xixiaofinland/sf.nvim'

rockspec_format = '3.0'
package = 'sf.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/xixiaofinland/sf.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-apex', 'tree-sitter-soql', 'tree-sitter-sosl', 'nvim-treesitter-legacy-api', 'fzf-lua' } 

test_dependencies = { 'mini.test' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'sf.nvim-' .. '1.6.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'tests' } ,
}
