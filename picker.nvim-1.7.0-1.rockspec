local git_ref = 'v1.7.0'
local modrev = '1.7.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/picker.nvim'

rockspec_format = '3.0'
package = 'picker.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'highly customizable and extensible Neovim fuzzy finder',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/wsdjeg/picker.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'picker.nvim-' .. '1.7.0',
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
