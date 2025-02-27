local git_ref = 'v2.2.1'
local modrev = '2.2.1'
local specrev = '1'

local repo_url = 'https://github.com/NStefan002/donut.nvim'

rockspec_format = '3.0'
package = 'donut.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'donut.c meets Neovim',
  detailed = '',
  labels = { 'donut', 'lua', 'luarocks', 'neovim-plugin', 'screensaver' } ,
  homepage = 'https://github.com/NStefan002/donut.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'donut.nvim-' .. '2.2.1',
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
