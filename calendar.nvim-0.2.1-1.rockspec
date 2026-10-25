local git_ref = 'v0.2.1'
local modrev = '0.2.1'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/calendar.nvim'

rockspec_format = '3.0'
package = 'calendar.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A lightweight and extensible calendar plugin for Neovim.',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/wsdjeg/calendar.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'calendar.nvim-' .. '0.2.1',
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
