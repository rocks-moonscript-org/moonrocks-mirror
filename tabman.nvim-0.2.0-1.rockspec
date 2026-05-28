local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/tabman.nvim'

rockspec_format = '3.0'
package = 'tabman.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tab management for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/wsdjeg/tabman.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tabman.nvim-' .. '0.2.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin', 'syntax' } ,
}
