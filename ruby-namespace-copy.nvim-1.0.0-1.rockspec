local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/matiyas/ruby-namespace-copy.nvim'

rockspec_format = '3.0'
package = 'ruby-namespace-copy.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Copy Ruby class/module namespace to clipboard using Tree-sitter',
  detailed = '',
  labels = { 'neovim', 'ruby', 'treesitter', 'namespace', 'clipboard' } ,
  homepage = 'https://github.com/matiyas/ruby-namespace-copy.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ruby-namespace-copy.nvim-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'lua', 'plugin' } ,
}
