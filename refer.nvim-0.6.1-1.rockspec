local git_ref = 'v0.6.1'
local modrev = '0.6.1'
local specrev = '1'

local repo_url = 'https://github.com/juniorsundar/refer.nvim'

rockspec_format = '3.0'
package = 'refer.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Picker that doesn\'t get in your way',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/juniorsundar/refer.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'refer.nvim-' .. '0.6.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin' } ,
}
