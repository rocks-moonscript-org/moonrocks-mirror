local git_ref = 'v1.10.0'
local modrev = '1.10.0'
local specrev = '1'

local repo_url = 'https://github.com/shortcuts/no-neck-pain.nvim'

rockspec_format = '3.0'
package = 'no-neck-pain.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Dead simple yet super extensible plugin to center the currently focused buffer to the middle of the screen.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/shortcuts/no-neck-pain.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'no-neck-pain.nvim-' .. '1.10.0',
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
